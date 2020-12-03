package curbs.mappers;

import commons.models.State;
import curbs.dto.CreateCurbDto;
import curbs.dto.CurbDto;
import curbs.model.Curb;

public class CurbMapper {
    public static Curb createCurbDtoToCurb(CreateCurbDto createCurbDto) {
        return Curb.builder()
                .conditionIndex(createCurbDto.getConditionIndex())
                .length(createCurbDto.getLength())
                .order(createCurbDto.getOrder())
                .state(State.builder()
                        .id(createCurbDto.getStateId())
                        .build()
                )
                .build();
    }

    public static CurbDto curbToCurbDto(Curb curb) {
        return CurbDto.builder()
                .id(curb.getId())
                .conditionIndex(curb.getConditionIndex())
                .length(curb.getLength())
                .order(curb.getOrder())
                .stateId(curb.getState().getId())
                .stateName(curb.getState().getName())
                .segmentId(curb.getSegment().getId())
                .build();
    }
}
