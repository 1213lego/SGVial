package exceptions;

import play.mvc.Http;


public class ResourceConflictException extends ResourceException {

    public ResourceConflictException(String message, Throwable throwable) {
        super(message, throwable);
        this.status = Http.Status.CONFLICT;
    }

    public ResourceConflictException(String resourceName, Object id) {
        super(String.format("El %s con identificador %s ya existe", resourceName, id), null);
        this.status = Http.Status.CONFLICT;
    }
}
