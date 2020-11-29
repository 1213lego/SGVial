package segments.services;

import config.DatabaseExecutionContext;
import exceptions.ResourceConflictException;
import lombok.extern.slf4j.Slf4j;
import play.db.jpa.JPAApi;
import repositories.core.Page;
import segments.dto.CreateSegmentDto;
import segments.dto.SegmentDto;
import segments.mappers.SegmentMapper;
import segments.models.Segment;
import segments.repositories.CurbRepository;
import segments.repositories.NomenclatureRepository;
import segments.repositories.RoadWayRepository;
import segments.repositories.SegmentRepository;

import javax.inject.Inject;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;

import static segments.mappers.CreateSegmentMappers.createSegmentDtoToSegment;

@Slf4j
public class SegmentServiceImpl implements SegmentService {

    private final JPAApi jpaApi;
    private final SegmentRepository segmentRepository;
    private final NomenclatureRepository nomenclatureRepository;
    private final DatabaseExecutionContext executionContext;
    private final CurbRepository curbRepository;
    private final RoadWayRepository roadWayRepository;

    @Inject
    public SegmentServiceImpl(JPAApi jpaApi,
                              SegmentRepository segmentRepository,
                              NomenclatureRepository nomenclatureRepository,
                              DatabaseExecutionContext executionContext, CurbRepository curbRepository, RoadWayRepository roadWayRepository) {
        this.jpaApi = jpaApi;
        this.segmentRepository = segmentRepository;
        this.nomenclatureRepository = nomenclatureRepository;
        this.executionContext = executionContext;
        this.curbRepository = curbRepository;
        this.roadWayRepository = roadWayRepository;
    }

    @Override
    public CompletionStage<Void> create(CreateSegmentDto createSegmentDto) {
        return CompletableFuture
                .runAsync(() -> {
                    segmentRepository.findById(createSegmentDto.getId())
                            .ifPresent(segment -> {
                                throw new ResourceConflictException("Segmento", segment.getId());
                            });
                    Segment segment = createSegmentDtoToSegment(createSegmentDto);
                    segmentRepository.save(segment);
                }, executionContext);
    }

    @Override
    public CompletionStage<Page<List<SegmentDto>>> findAll(int page, int pageSize) {
        return CompletableFuture
                .supplyAsync(
                        () -> segmentRepository.findAll(page, pageSize)
                                .map(SegmentMapper::segmentsToSegmentDto),
                        executionContext
                );
    }


}