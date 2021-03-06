package commons.repositories;

import com.google.inject.ImplementedBy;
import commons.model.Feature;
import repositories.core.JpaRepository;

@ImplementedBy(FeatureRepositoryImpl.class)
public interface FeatureRepository extends JpaRepository<Feature, Short> {
}
