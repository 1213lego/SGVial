package commons;

import commons.services.CommonService;
import play.libs.Json;
import play.libs.concurrent.HttpExecutionContext;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;
import java.util.concurrent.CompletionStage;

public class CommonApi extends Controller {
    private final HttpExecutionContext executionContext;
    private final CommonService commonService;

    @Inject
    public CommonApi(HttpExecutionContext executionContext, CommonService commonService) {
        this.executionContext = executionContext;
        this.commonService = commonService;
    }

    public CompletionStage<Result> features() {
        return commonService.features()
                .thenApplyAsync(
                        features -> ok(Json.toJson(features)),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> roadTypes() {
        return commonService.roadTypes()
                .thenApplyAsync(
                        roadTypes -> ok(Json.toJson(roadTypes)),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> states() {
        return commonService.states()
                .thenApplyAsync(
                        states -> ok(Json.toJson(states)),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> surfaces() {
        return commonService.surfaces()
                .thenApplyAsync(surfaces -> ok(Json.toJson(surfaces)),
                        executionContext.current()
                );
    }
}
