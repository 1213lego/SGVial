package curbs.services;

import config.DatabaseExecutionContext;
import curbs.dto.CreateCurbDto;
import curbs.dto.CurbDto;
import curbs.mappers.CurbMapper;
import curbs.model.Curb;
import curbs.repositories.CurbRepository;
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
    public CompletionStage<List<CurbDto>> findAllBySegmentId(Long id) {
        return CompletableFuture
                .supplyAsync(() -> curbRepository.findAllBySegmentId(id)
                        .stream().map(CurbMapper::curbToCurbDto)
                        .collect(Collectors.toList()), executionContext);
    }
}

