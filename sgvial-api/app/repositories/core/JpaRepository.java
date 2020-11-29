package repositories.core;

import play.db.jpa.JPAApi;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public interface JpaRepository<E, ID> extends CrudRepository<E, ID> {
    Class<E> getEntityType();

    JPAApi getJPAApi();

    default List<E> findAll() {
        return getJPAApi().withTransaction("default", true, (em) -> {
            CriteriaBuilder cb = em.getCriteriaBuilder();
            CriteriaQuery<E> query = cb.createQuery(getEntityType());
            query.select(query.from(getEntityType()));
            return em.createQuery(query)
                    .getResultList();
        });
    }

    default E save(final E entity) {
        return getJPAApi()
                .withTransaction((em) -> {
                    em.persist(entity);
                    return entity;
                });
    }

    default Optional<E> findById(final ID id) {
        return Optional.ofNullable(
                getJPAApi().withTransaction("default", true, (em) -> {
                    return em.find(getEntityType(), id);
                })
        );
    }


    default E update(final E entity) {
        return getJPAApi()
                .withTransaction((em) -> {
                    return em.merge(entity);
                });
    }

    default List<E> saveAll(List<E> entities) {
        List<E> savedEntities = new ArrayList<>();
        for (E entity : entities) {
            savedEntities.add(save(entity));
        }
        return savedEntities;
    }

    @Override
    default Page<List<E>> findAll(int page, int pageSize) {
        return getJPAApi()
                .withTransaction("default", (em) -> {
                    CriteriaBuilder cb = em.getCriteriaBuilder();
                    long count = count();
                    CriteriaQuery<E> query = cb.createQuery(getEntityType());
                    query.select(query.from(getEntityType()));
                    List<E> results = em.createQuery(query).
                            setFirstResult(page * pageSize)
                            .setMaxResults(pageSize)
                            .getResultList();
                    return Page.<List<E>>builder()
                            .results(results)
                            .pageSize(pageSize)
                            .pageNumber(page)
                            .totalPages((int) (count / pageSize))
                            .totalCount(count)
                            .build();
                });
    }

    @Override
    default long count() {
        return getJPAApi()
                .withTransaction("default", (em) -> {
                    CriteriaBuilder cb = em.getCriteriaBuilder();
                    CriteriaQuery<Long> countQuery = cb.createQuery(Long.class);
                    Root<E> from = countQuery.from(getEntityType());
                    countQuery.select(cb.count(from));
                    return em.createQuery(countQuery).getSingleResult();
                });
    }
}
