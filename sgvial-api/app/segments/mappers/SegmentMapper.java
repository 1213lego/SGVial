package segments.mappers;

import segments.dto.SegmentDto;
import segments.models.Segment;

import java.util.List;
import java.util.stream.Collectors;

public class SegmentMapper {
    public static List<SegmentDto> segmentsToSegmentDto(List<Segment> segments) {
        return segments.stream()
                .map(SegmentMapper::segmentToSegmentDto)
                .collect(Collectors.toList());
    }

    public static SegmentDto segmentToSegmentDto(Segment segment) {
        return SegmentDto.builder()
                .id(segment.getId())
                .roadTypeId(segment.getRoadType().getId())
                .length(segment.getLength())
                .stratum(segment.getStratum())
                .roadTypeName(segment.getRoadType().getName())
                .build();
    }
}
