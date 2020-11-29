package segments.repositories;

import play.db.jpa.JPAApi;
import segments.models.Curb;

import javax.inject.Inject;

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
}
