package commons.repositories;

import com.google.inject.ImplementedBy;
import commons.models.RoadType;
import repositories.core.JpaRepository;

@ImplementedBy(RoadTypeRepositoryImpl.class)
public interface RoadTypeRepository extends JpaRepository<RoadType, Short> {
}
