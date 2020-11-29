package segments.repositories;

import com.google.inject.ImplementedBy;
import repositories.core.JpaRepository;
import segments.models.Curb;

@ImplementedBy(CurbRepositoryImpl.class)
public interface CurbRepository extends JpaRepository<Curb, Long> {
}
