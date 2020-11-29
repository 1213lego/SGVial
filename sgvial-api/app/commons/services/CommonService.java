package commons.services;

import com.google.inject.ImplementedBy;
import commons.model.Feature;
import commons.model.RoadType;
import commons.model.State;
import commons.model.Surface;

import java.util.List;
import java.util.concurrent.CompletionStage;

@ImplementedBy(CommonServiceImpl.class)
public interface CommonService {
    CompletionStage<List<Feature>> features();

    CompletionStage<List<RoadType>> roadTypes();

    CompletionStage<List<State>> states();

    CompletionStage<List<Surface>> surfaces();
}
