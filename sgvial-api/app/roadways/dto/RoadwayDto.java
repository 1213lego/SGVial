package roadways.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoadwayDto {
    private Long id;
    private Double mdr;
    private Double opi;
    private Double iri;
    private Long segmentId;
    private Short surfaceId;
    private String surfaceName;
    private Short featureId;
    private String featureName;
}
