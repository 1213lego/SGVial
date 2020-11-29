package segments.repositories;

import play.db.jpa.JPAApi;
import segments.models.Roadway;

import javax.inject.Inject;

public class RoadwayRepositoryImpl implements RoadwayRepository {
    private final JPAApi jpaApi;

    @Inject
    public RoadwayRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
    }

    @Override
    public Class<Roadway> getEntityType() {
        return Roadway.class;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }
}
