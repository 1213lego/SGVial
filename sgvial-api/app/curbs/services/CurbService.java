package curbs.services;

import com.google.inject.ImplementedBy;
import curbs.dto.CreateCurbDto;
import curbs.dto.CurbDto;

import java.util.List;
import java.util.concurrent.CompletionStage;

@ImplementedBy(CurbServiceImpl.class)
public interface CurbService {
    CompletionStage<Void> create(final Long segmentId, final CreateCurbDto createCurbDto);

    CompletionStage<List<CurbDto>> findAllBySegmentId(final Long id);
}
