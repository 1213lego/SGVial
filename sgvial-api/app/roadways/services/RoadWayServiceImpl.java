package roadways.services;

import commons.models.Feature;
import commons.models.Surface;
import config.DatabaseExecutionContext;
import exceptions.ResourceNotFoundException;
import roadways.dto.CreateRoadwayDto;
import roadways.dto.RoadwayDto;
import roadways.dto.UpdateRoadwayDto;
import roadways.mappers.RoadwayMapper;
import roadways.models.Roadway;
import roadways.repositories.RoadwayRepository;
import segments.models.Segment;
import segments.services.SegmentService;

import javax.inject.Inject;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.stream.Collectors;

public class RoadWayServiceImpl implements RoadWayService {
    private final RoadwayRepository roadwayRepository;
    private final DatabaseExecutionContext executionContext;
    private final SegmentService segmentService;

    @Inject
    public RoadWayServiceImpl(RoadwayRepository roadwayRepository, DatabaseExecutionContext executionContext, SegmentService segmentService) {
        this.roadwayRepository = roadwayRepository;
        this.executionContext = executionContext;
        this.segmentService = segmentService;
    }

    @Override
    public CompletionStage<List<RoadwayDto>> findAllBySegmentId(Long segmentId) {
        return CompletableFuture
                .supplyAsync(() -> roadwayRepository.findAllBySegmentId(segmentId)
                                .stream().map(RoadwayMapper::roadwayToRoadwayDto).collect(Collectors.toList()),
                        executionContext);
    }

    @Override
    public CompletionStage<Void> create(Long segmentId, CreateRoadwayDto createRoadwayDto) {
        return segmentService.findById(segmentId)
                .thenRunAsync(() -> {
                    Roadway roadway = RoadwayMapper.createRoadwayDtoToRoadway(createRoadwayDto);
                    roadway.setSegment(Segment.builder()
                            .id(segmentId)
                            .build());
                    roadwayRepository.save(roadway);
                }, executionContext);
    }

    @Override
    public CompletionStage<RoadwayDto> findById(Long roadwayId) {
        return CompletableFuture
                .supplyAsync(() -> roadwayRepository.findById(roadwayId)
                                .map(RoadwayMapper::roadwayToRoadwayDto)
                                .orElseThrow(() -> new ResourceNotFoundException("Calzada", roadwayId)),
                        executionContext
                );
    }

    @Override
    public CompletionStage<Void> update(Long roadwayId, UpdateRoadwayDto updateRoadwayDto) {
        return CompletableFuture.runAsync(
                () -> {
                    Roadway roadway = roadwayRepository.findById(roadwayId)
                            .orElseThrow(() -> new ResourceNotFoundException("Calzada", roadwayId));
                    roadway.setFeature(Feature.builder()
                            .id(updateRoadwayDto.getFeatureId())
                            .build());
                    roadway.setSurface(Surface.builder()
                            .id(updateRoadwayDto.getSurfaceId())
                            .build());
                    roadway.setIri(updateRoadwayDto.getIri());
                    roadway.setMdr(updateRoadwayDto.getMdr());
                    roadway.setOpi(updateRoadwayDto.getOpi());
                    roadwayRepository.update(roadway);
                },
                executionContext
        );
    }


}
