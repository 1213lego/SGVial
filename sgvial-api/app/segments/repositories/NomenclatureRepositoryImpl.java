package segments.repositories;

import play.db.jpa.JPAApi;
import segments.models.Nomenclature;

import javax.inject.Inject;

public class NomenclatureRepositoryImpl implements NomenclatureRepository {
    private final JPAApi jpaApi;
    private final Class<Nomenclature> entityType;

    @Inject
    public NomenclatureRepositoryImpl(JPAApi jpaApi) {
        this.jpaApi = jpaApi;
        this.entityType = Nomenclature.class;
    }


    @Override
    public Class<Nomenclature> getEntityType() {
        return entityType;
    }

    @Override
    public JPAApi getJPAApi() {
        return jpaApi;
    }
}
