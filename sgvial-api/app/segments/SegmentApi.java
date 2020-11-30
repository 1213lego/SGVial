package segments;

import lombok.extern.slf4j.Slf4j;
import play.libs.Json;
import play.libs.concurrent.HttpExecutionContext;
import play.mvc.Controller;
import play.mvc.Http;
import play.mvc.Result;
import segments.dto.CreateSegmentDto;
import segments.services.SegmentService;

import javax.inject.Inject;
import java.util.concurrent.CompletionStage;

@Slf4j
public class SegmentApi extends Controller {
    private final SegmentService segmentService;
    private final HttpExecutionContext executionContext;

    @Inject
    public SegmentApi(SegmentService segmentService, HttpExecutionContext executionContext) {
        this.segmentService = segmentService;
        this.executionContext = executionContext;
    }

    public CompletionStage<Result> create(Http.Request request) {
        return segmentService
                .create(
                        Json.fromJson(request.body().asJson(), CreateSegmentDto.class)
                ).thenApplyAsync(
                        aVoid -> new Result(created().status()),
                        executionContext.current()
                );
    }

    public CompletionStage<Result> findAll(Integer page, Integer pageSize) {
        return segmentService
                .findAll(
                        page, pageSize
                ).thenApplyAsync(
                        segmentPage -> ok(Json.toJson(segmentPage)),
                        executionContext.current()
                );

    }

    public CompletionStage<Result> findById(Long id) {
        return segmentService
                .findById(id).thenApplyAsync(
                        segmentPage -> ok(Json.toJson(segmentPage)),
                        executionContext.current()
                );

    }
}
