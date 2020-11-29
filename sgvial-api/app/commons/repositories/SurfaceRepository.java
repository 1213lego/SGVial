package commons.repositories;

import com.google.inject.ImplementedBy;
import commons.model.Surface;
import repositories.core.JpaRepository;

@ImplementedBy(SurfaceRepositoryImpl.class)
public interface SurfaceRepository extends JpaRepository<Surface, Short> {
}
