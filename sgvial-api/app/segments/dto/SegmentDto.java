package segments.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SegmentDto {
    private Long id;
    private Short roadTypeId;
    private Double length;
    private Short stratum;
}
