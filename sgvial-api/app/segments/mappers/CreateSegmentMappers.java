package segments.mappers;

import commons.model.Feature;
import commons.model.RoadType;
import commons.model.State;
import commons.model.Surface;
import curbs.dto.CreateCurbDto;
import curbs.model.Curb;
import segments.dto.CreateRoadWayDto;
import segments.dto.CreateSegmentDto;
import segments.models.Nomenclature;
import segments.models.Roadway;
import segments.models.Segment;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class CreateSegmentMappers {
    public static Segment createSegmentDtoToSegment(CreateSegmentDto createSegmentDto) {
        Segment segment = Segment.builder()
                .id(createSegmentDto.getId())
                .roadType(RoadType.builder().id(createSegmentDto.getRoadTypeId()).build())
                .length(createSegmentDto.getLength())
                .stratum(createSegmentDto.getStratum())
                .build();
        Nomenclature nomenclature = Nomenclature.builder()
                .segmentId(segment.getId())
                .generatingPath(RoadType.builder().id(createSegmentDto.getGeneratingPathId()).build())
                .generatingPathNumber(createSegmentDto.getGeneratingPathNumber())
                .crossFrom(RoadType.builder().id(createSegmentDto.getCrossFromId()).build())
                .crossFromNumber(createSegmentDto.getCrossFromNumber())
                .crossUp(RoadType.builder().id(createSegmentDto.getCrossUpId()).build())
                .crossUpNumber(createSegmentDto.getCrossUpNumber())
                .segment(segment)
                .build();
        segment.setNomenclature(nomenclature);
        segment.setRoadways(crateRoadWayDtoToRoadWay(createSegmentDto.getRoadways(), segment));
        segment.setCurbs(createCurbDtoToCurb(createSegmentDto.getCurbs(), segment));
        return segment;
    }

    public static List<Curb> createCurbDtoToCurb(List<CreateCurbDto> curbs, final Segment segment) {
        return Optional.ofNullable(curbs)
                .orElse(new ArrayList<>()).stream()
                .map((curb) -> Curb.builder()
                        .conditionIndex(curb.getConditionIndex())
                        .length(curb.getLength())
                        .order(curb.getOrder())
                        .state(State.builder().id(curb.getStateId()).build())
                        .segment(segment)
                        .build()).collect(Collectors.toList());
    }

    public static List<Roadway> crateRoadWayDtoToRoadWay(List<CreateRoadWayDto> roadWays, final Segment segment) {
        return Optional.ofNullable(roadWays)
                .orElse(new ArrayList<>())
                .stream()
                .map(createRoadWayDto -> Roadway.builder()
                        .mdr(createRoadWayDto.getMdr())
                        .iri(createRoadWayDto.getIri())
                        .opi(createRoadWayDto.getOpi())
                        .feature(Feature.builder().id(createRoadWayDto.getFeatureId()).build())
                        .surface(Surface.builder().id(createRoadWayDto.getSurfaceId()).build())
                        .segment(segment)
                        .build()).collect(Collectors.toList());
    }
}
