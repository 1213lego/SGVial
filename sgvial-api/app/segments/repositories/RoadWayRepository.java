package segments.repositories;

import com.google.inject.ImplementedBy;
import repositories.core.JpaRepository;
import segments.models.RoadWay;

@ImplementedBy(RoadWayRepositoryImpl.class)
public interface RoadWayRepository extends JpaRepository<RoadWay, Long> {
}
