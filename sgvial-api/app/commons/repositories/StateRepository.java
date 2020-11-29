package commons.repositories;

import com.google.inject.ImplementedBy;
import commons.model.State;
import repositories.core.JpaRepository;

@ImplementedBy(StateRepositoryImpl.class)
public interface StateRepository extends JpaRepository<State, Short> {
}
