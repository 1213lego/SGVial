package roadways;

import play.libs.Json;
import play.libs.concurrent.HttpExecutionContext;
import play.mvc.Controller;
import play.mvc.Http;
import play.mvc.Result;
import roadways.dto.CreateRoadwayDto;
import roadways.dto.UpdateRoadwayDto;
import roadways.services.RoadWayService;

import javax.inject.Inject;
import java.util.concurrent.CompletionStage;

public class RoadwayApi extends Controller {
    private final HttpExecutionContext executionContext;
    private final RoadWayService roadWayService;

    @Inject
    public RoadwayApi(HttpExecutionContext executionContext, RoadWayService roadWayService) {
        this.executionContext = executionContext;
        this.roadWayService = roadWayService;
    }

    public CompletionStage<Result> findAll(Long segmentId) {
        return roadWayService.findAllBySegmentId(segmentId)
                .thenApplyAsync(
                        roadways -> ok(Json.toJson(roadways)),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> create(Long segmentId, Http.Request request) {
        return roadWayService.create(segmentId, Json.fromJson(request.body().asJson(), CreateRoadwayDto.class))
                .thenApplyAsync((aVoid -> new Result(created().status())),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> findById(Long roadwayId) {
        return roadWayService.findById(roadwayId)
                .thenApplyAsync(roadwayDto -> ok(Json.toJson(roadwayDto)),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> update(Long roadwayId, Http.Request request) {
        return roadWayService.update(roadwayId, Json.fromJson(request.body().asJson(), UpdateRoadwayDto.class))
                .thenApplyAsync((aVoid -> ok()),
                        executionContext.current()
                );
    }
}
