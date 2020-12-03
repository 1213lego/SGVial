package commons.services;

import com.google.inject.ImplementedBy;
import commons.models.Feature;
import commons.models.RoadType;
import commons.models.State;
import commons.models.Surface;

import java.util.List;
import java.util.concurrent.CompletionStage;

@ImplementedBy(CommonServiceImpl.class)
public interface CommonService {
    CompletionStage<List<Feature>> features();

    CompletionStage<List<RoadType>> roadTypes();

    CompletionStage<List<State>> states();

    CompletionStage<List<Surface>> surfaces();
}
