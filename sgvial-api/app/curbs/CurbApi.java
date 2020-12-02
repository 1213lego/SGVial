package curbs;

import curbs.dto.CreateCurbDto;
import curbs.services.CurbServiceImpl;
import play.libs.Json;
import play.libs.concurrent.HttpExecutionContext;
import play.mvc.Controller;
import play.mvc.Http;
import play.mvc.Result;

import javax.inject.Inject;
import java.util.concurrent.CompletionStage;

public class CurbApi extends Controller {
    private final HttpExecutionContext executionContext;
    private final CurbServiceImpl curbService;

    @Inject
    public CurbApi(HttpExecutionContext executionContext, CurbServiceImpl curbService) {
        this.executionContext = executionContext;
        this.curbService = curbService;
    }

    public CompletionStage<Result> findAll(Long id) {
        return curbService.findAllBySegmentId(id)
                .thenApplyAsync(
                        (curbs) -> ok(Json.toJson(curbs)),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> create(Long segmentId, Http.Request request) {
        return curbService.create(segmentId,
                Json.fromJson(request.body().asJson(), CreateCurbDto.class))
                .thenApplyAsync(
                        (aVoid) -> new Result(created().status()),
                        executionContext.current()
                );
    }

}
