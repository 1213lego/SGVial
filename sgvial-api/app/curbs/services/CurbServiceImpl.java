package curbs.services;

import commons.models.State;
import config.DatabaseExecutionContext;
import curbs.dto.CreateCurbDto;
import curbs.dto.CurbDto;
import curbs.dto.UpdateCurbDto;
import curbs.mappers.CurbMapper;
import curbs.model.Curb;
import curbs.repositories.CurbRepository;
import exceptions.ResourceNotFoundException;
import play.db.jpa.JPAApi;
import segments.models.Segment;
import segments.services.SegmentService;

import javax.inject.Inject;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.stream.Collectors;

public class CurbServiceImpl implements CurbService {
    private final JPAApi jpaApi;
    private final DatabaseExecutionContext executionContext;
    private final CurbRepository curbRepository;
    private final SegmentService segmentService;

    @Inject
    public CurbServiceImpl(JPAApi jpaApi,
                           DatabaseExecutionContext executionContext,
                           CurbRepository curbRepository,
                           SegmentService segmentService) {
        this.jpaApi = jpaApi;
        this.executionContext = executionContext;
        this.curbRepository = curbRepository;
        this.segmentService = segmentService;
    }

    @Override
    public CompletionStage<Void> create(final Long segmentId, final CreateCurbDto createCurbDto) {
        return segmentService.findById(segmentId)
                .thenRunAsync(() -> {
                    Curb curb = CurbMapper.createCurbDtoToCurb(createCurbDto);
                    curb.setSegment(
                            Segment.builder()
                                    .id(segmentId)
                                    .build()
                    );
                    curbRepository.save(curb);
                }, executionContext);
    }

    @Override
    public CompletionStage<List<CurbDto>> findAllBySegmentId(Long segmentId) {
        return CompletableFuture
                .supplyAsync(() -> curbRepository.findAllBySegmentId(segmentId)
                        .stream().map(CurbMapper::curbToCurbDto)
                        .collect(Collectors.toList()), executionContext);
    }

    @Override
    public CompletionStage<Void> update(Long curbId, UpdateCurbDto updateCurbDto) {
        return CompletableFuture
                .runAsync(() -> {
                            Curb curb = curbRepository.findById(curbId)
                                    .orElseThrow(() -> new ResourceNotFoundException("Bordillo", curbId));
                            curb.setConditionIndex(updateCurbDto.getConditionIndex());
                            curb.setLength(updateCurbDto.getLength());
                            curb.setOrder(updateCurbDto.getOrder());
                            curb.setState(State.builder()
                                    .id(updateCurbDto.getStateId())
                                    .build());
                            curbRepository.update(curb);
                        },
                        executionContext
                );
    }

    @Override
    public CompletionStage<CurbDto> findById(Long curbId) {
        return CompletableFuture
                .supplyAsync(() -> curbRepository.findById(curbId)
                                .map(CurbMapper::curbToCurbDto)
                                .orElseThrow(() -> new ResourceNotFoundException("Bordillo", curbId)),
                        executionContext
                );
    }
}

