package curbs.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CurbDto {
    private Long id;
    private Short stateId;
    private String stateName;
    private Long segmentId;
    private Double length;
    private Integer order;
    private Double conditionIndex;
}
