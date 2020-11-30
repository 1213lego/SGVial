package exceptions;

import play.mvc.Http;


public class ResourceNotFoundException extends ResourceException {

    public ResourceNotFoundException(String message, Throwable throwable) {
        super(message, throwable);
        this.status = Http.Status.NOT_FOUND;
    }

    public ResourceNotFoundException(String resourceName, Object id) {
        super(String.format("El %s con identificador %s no existe", resourceName, id), null);
        this.status = Http.Status.NOT_FOUND;
    }
}
