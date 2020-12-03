package commons.repositories;

import commons.models.Feature;
import play.db.jpa.JPAApi;

import javax.inject.Inject;

public final class FeatureRepositoryImpl implements FeatureRepository {
    private final JPAApi jpaApi;
    private final Class<Feature> entityType;

    @Inject
    public FeatureRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
        this.entityType = Feature.class;
    }

    @Override
    public Class<Feature> getEntityType() {
        return entityType;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }
}
