package curbs.repositories;

import com.google.inject.ImplementedBy;
import curbs.model.Curb;
import repositories.core.JpaRepository;

import java.util.List;

@ImplementedBy(CurbRepositoryImpl.class)
public interface CurbRepository extends JpaRepository<Curb, Long> {
    List<Curb> findAllBySegmentId(Long segmentId);
}
