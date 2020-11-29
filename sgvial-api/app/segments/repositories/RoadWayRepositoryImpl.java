package segments.repositories;

import play.db.jpa.JPAApi;
import segments.models.RoadWay;

import javax.inject.Inject;

public class RoadWayRepositoryImpl implements RoadWayRepository {
    private final JPAApi jpaApi;

    @Inject
    public RoadWayRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
    }

    @Override
    public Class<RoadWay> getEntityType() {
        return RoadWay.class;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }
}
