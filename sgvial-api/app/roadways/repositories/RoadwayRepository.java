package roadways.repositories;

import com.google.inject.ImplementedBy;
import repositories.core.JpaRepository;
import roadways.models.Roadway;

import java.util.List;

@ImplementedBy(RoadwayRepositoryImpl.class)
public interface RoadwayRepository extends JpaRepository<Roadway, Long> {
    List<Roadway> findAllBySegmentId(Long segmentId);
}
