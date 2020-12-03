package roadways.repositories;

import play.db.jpa.JPAApi;
import roadways.models.Roadway;

import javax.inject.Inject;
import java.util.List;

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

    @Override
    public List<Roadway> findAllBySegmentId(Long segmentId) {
        return jpaApi.withTransaction("default", true, (em) -> {
            String query = "select r from Roadway r where r.segment.id = :segmentId";
            return em.createQuery(query, Roadway.class)
                    .setParameter("segmentId", segmentId)
                    .getResultList();
        });
    }
}
