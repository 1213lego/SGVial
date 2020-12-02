package curbs.repositories;

import curbs.model.Curb;
import play.db.jpa.JPAApi;

import javax.inject.Inject;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Root;
import java.util.List;

public class CurbRepositoryImpl implements CurbRepository {
    private final JPAApi jpaApi;

    @Inject
    public CurbRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
    }

    @Override
    public Class<Curb> getEntityType() {
        return Curb.class;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }

    @Override
    public List<Curb> findAllBySegmentId(Long segmentId) {
        return jpaApi.withTransaction("default", true, (em) -> {
            String query = "select c from Curb c where c.segment.id = :segmentId";
            return em.createQuery(query, Curb.class)
                    .setParameter("segmentId", segmentId)
                    .getResultList();
        });
    }
}
