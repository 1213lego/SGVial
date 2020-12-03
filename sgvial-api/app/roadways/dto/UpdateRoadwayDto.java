package roadways.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateRoadwayDto {
    private Double mdr;
    private Double opi;
    private Double iri;
    private Short surfaceId;
    private Short featureId;
}
