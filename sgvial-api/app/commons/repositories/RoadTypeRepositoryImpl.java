package commons.repositories;

import commons.models.RoadType;
import play.db.jpa.JPAApi;

import javax.inject.Inject;

public final class RoadTypeRepositoryImpl implements RoadTypeRepository {
    private final JPAApi jpaApi;
    private final Class<RoadType> entityType;

    @Inject
    public RoadTypeRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
        this.entityType = RoadType.class;
    }


    @Override
    public Class<RoadType> getEntityType() {
        return entityType;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }

}
