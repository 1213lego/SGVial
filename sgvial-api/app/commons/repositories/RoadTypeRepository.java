package commons.repositories;

import com.google.inject.ImplementedBy;
import commons.model.RoadType;
import repositories.core.JpaRepository;

@ImplementedBy(RoadTypeRepositoryImpl.class)
public interface RoadTypeRepository extends JpaRepository<RoadType, Short> {
}
