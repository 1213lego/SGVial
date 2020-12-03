package commons.repositories;

import commons.models.State;
import play.db.jpa.JPAApi;

import javax.inject.Inject;

public final class StateRepositoryImpl implements StateRepository {
    private final JPAApi jpaApi;
    private final Class<State> entityType;

    @Inject
    public StateRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
        this.entityType = State.class;
    }


    @Override
    public Class<State> getEntityType() {
        return entityType;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }
}
