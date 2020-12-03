package roadways.services;

import com.google.inject.ImplementedBy;
import roadways.dto.CreateRoadwayDto;
import roadways.dto.RoadwayDto;
import roadways.dto.UpdateRoadwayDto;

import java.util.List;
import java.util.concurrent.CompletionStage;

@ImplementedBy(RoadWayServiceImpl.class)
public interface RoadWayService {
    CompletionStage<List<RoadwayDto>> findAllBySegmentId(final Long segmentId);

    CompletionStage<Void> create(Long segmentId, CreateRoadwayDto createRoadwayDto);

    CompletionStage<RoadwayDto> findById(final Long roadwayId);

    CompletionStage<Void> update(Long roadwayId, UpdateRoadwayDto updateRoadwayDto);
}
