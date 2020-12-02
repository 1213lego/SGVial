package curbs.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateCurbDto {
    private Short stateId;
    private Double length;
    private Integer order;
    private Double conditionIndex;
}
