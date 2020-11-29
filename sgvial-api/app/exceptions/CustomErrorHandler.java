package exceptions;

import play.Environment;
import play.api.OptionalSourceMapper;
import play.http.JsonHttpErrorHandler;
import play.mvc.Http;
import play.mvc.Result;
import play.mvc.Results;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;

@Singleton
public class CustomErrorHandler extends JsonHttpErrorHandler {

    @Inject
    public CustomErrorHandler(Environment environment, OptionalSourceMapper sourceMapper) {
        super(environment, sourceMapper);
    }

    @Override
    public CompletionStage<Result> onServerError(Http.RequestHeader request, Throwable exception) {
        if (exception.getCause() instanceof ResourceException) {
            ResourceException resourceException = (ResourceException) exception.getCause();
            return CompletableFuture.completedFuture(
                    Results.status(resourceException.status, resourceException.toJson())
            );
        }
        return super.onServerError(request, exception);
    }
}
