package segments.dto;

import curbs.dto.CreateCurbDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateSegmentDto {
    private Long id;
    private Short roadTypeId;
    private Double length;
    private Short stratum;

    //nomenclature info
    private Short generatingPathId;
    private String generatingPathNumber;

    private Short crossFromId;
    private String crossFromNumber;

    private Short crossUpId;
    private String crossUpNumber;

    private List<CreateRoadwayDto> roadways;
    private List<CreateCurbDto> curbs;
}
