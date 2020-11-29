package repositories.core;

import java.util.List;
import java.util.Optional;

public interface CrudRepository<E, ID> {

    E save(final E entity);

    E update(final E entity);

    Optional<E> findById(final ID id);

    List<E> findAll();

    List<E> saveAll(List<E> entities);

    Page<List<E>> findAll(int page, int pageSize);

    long count();
}
