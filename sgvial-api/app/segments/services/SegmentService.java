package segments.services;

import com.google.inject.ImplementedBy;
import repositories.core.Page;
import segments.dto.CreateSegmentDto;
import segments.dto.SegmentDto;

import java.util.List;
import java.util.concurrent.CompletionStage;

@ImplementedBy(SegmentServiceImpl.class)
public interface SegmentService {

    CompletionStage<Void> create(CreateSegmentDto createSegmentDto);

    CompletionStage<Page<List<SegmentDto>>> findAll(int page, int pageSize);

    CompletionStage<SegmentDto> findById(Long id);
}
