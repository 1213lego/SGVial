package commons.services;

import commons.models.Feature;
import commons.models.RoadType;
import commons.models.State;
import commons.models.Surface;
import commons.repositories.FeatureRepository;
import commons.repositories.RoadTypeRepository;
import commons.repositories.StateRepository;
import commons.repositories.SurfaceRepository;
import config.DatabaseExecutionContext;

import javax.inject.Inject;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;

public class CommonServiceImpl implements CommonService {

    private final FeatureRepository featureRepository;
    private final RoadTypeRepository roadTypeRepository;
    private final StateRepository stateRepository;
    private final SurfaceRepository surfaceRepository;
    private final DatabaseExecutionContext executionContext;

    @Inject
    public CommonServiceImpl(FeatureRepository featureRepository,
                             RoadTypeRepository roadTypeRepository,
                             StateRepository stateRepository,
                             SurfaceRepository surfaceRepository, DatabaseExecutionContext executionContext) {
        this.featureRepository = featureRepository;
        this.roadTypeRepository = roadTypeRepository;
        this.stateRepository = stateRepository;
        this.surfaceRepository = surfaceRepository;
        this.executionContext = executionContext;
    }

    @Override
    public CompletionStage<List<Feature>> features() {
        return CompletableFuture.supplyAsync(
                featureRepository::findAll,
                executionContext
        );
    }

    @Override
    public CompletionStage<List<RoadType>> roadTypes() {
        return CompletableFuture.supplyAsync(
                roadTypeRepository::findAll,
                executionContext
        );
    }

    @Override
    public CompletionStage<List<State>> states() {
        return CompletableFuture.supplyAsync(
                stateRepository::findAll,
                executionContext
        );
    }

    @Override
    public CompletionStage<List<Surface>> surfaces() {
        return CompletableFuture.supplyAsync(
                surfaceRepository::findAll,
                executionContext
        );
    }
}
