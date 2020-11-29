package segments.repositories;

import com.google.inject.ImplementedBy;
import repositories.core.JpaRepository;
import segments.models.Nomenclature;

@ImplementedBy(NomenclatureRepositoryImpl.class)
public interface NomenclatureRepository extends JpaRepository<Nomenclature, Long> {
}
