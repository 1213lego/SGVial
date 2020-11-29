package segments.repositories;

import com.google.inject.ImplementedBy;
import repositories.core.JpaRepository;
import segments.models.Segment;

@ImplementedBy(SegmentRepositoryImpl.class)
public interface SegmentRepository extends JpaRepository<Segment, Long> {
}
