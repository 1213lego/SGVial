package roadways.mappers;

import commons.models.Feature;
import commons.models.Surface;
import roadways.dto.CreateRoadwayDto;
import roadways.dto.RoadwayDto;
import roadways.models.Roadway;

public class RoadwayMapper {
    public static Roadway createRoadwayDtoToRoadway(CreateRoadwayDto createRoadwayDto) {
        return Roadway.builder()
                .feature(Feature.builder()
                        .id(createRoadwayDto.getFeatureId())
                        .build())
                .surface(Surface.builder()
                        .id(createRoadwayDto.getSurfaceId())
                        .build())
                .iri(createRoadwayDto.getIri())
                .mdr(createRoadwayDto.getMdr())
                .opi(createRoadwayDto.getOpi())
                .build();
    }

    public static RoadwayDto roadwayToRoadwayDto(Roadway roadway) {
        return RoadwayDto.builder()
                .id(roadway.getId())
                .segmentId(roadway.getSegment().getId())
                .surfaceId(roadway.getSurface().getId())
                .surfaceName(roadway.getSurface().getName())
                .iri(roadway.getIri())
                .mdr(roadway.getMdr())
                .opi(roadway.getOpi())
                .featureId(roadway.getFeature().getId())
                .featureName(roadway.getFeature().getName())
                .build();
    }
}
