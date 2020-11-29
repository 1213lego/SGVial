package commons.repositories;

import commons.model.Surface;
import play.db.jpa.JPAApi;

import javax.inject.Inject;

public final class SurfaceRepositoryImpl implements SurfaceRepository {
    private final JPAApi jpaApi;
    private final Class<Surface> entityType;

    @Inject
    public SurfaceRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
        this.entityType = Surface.class;
    }


    @Override
    public Class<Surface> getEntityType() {
        return entityType;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }
}
