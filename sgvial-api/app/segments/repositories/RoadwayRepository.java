package segments.repositories;

import com.google.inject.ImplementedBy;
import repositories.core.JpaRepository;
import segments.models.Roadway;

@ImplementedBy(RoadwayRepositoryImpl.class)
public interface RoadwayRepository extends JpaRepository<Roadway, Long> {
}
