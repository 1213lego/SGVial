package segments.repositories;

import play.db.jpa.JPAApi;
import segments.models.Segment;

import javax.inject.Inject;

public class SegmentRepositoryImpl implements SegmentRepository {
    private final JPAApi jpaApi;
    private final Class<Segment> entityType;

    @Inject
    public SegmentRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
        this.entityType = Segment.class;
    }


    @Override
    public Class<Segment> getEntityType() {
        return entityType;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }

}
