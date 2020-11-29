package segments.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateCurbDto {
    private Short stateId;
    private Double length;
    private Integer order;
    private Double conditionIndex;
}
