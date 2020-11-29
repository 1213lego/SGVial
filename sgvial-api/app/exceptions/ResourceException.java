package exceptions;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import lombok.Getter;
import play.libs.Json;

import java.time.LocalDateTime;

@Getter
public abstract class ResourceException extends RuntimeException {
    protected int status;
    protected String message;
    protected LocalDateTime date;

    public ResourceException(String message, Throwable cause) {
        super(message, cause);
        this.message = message;
        date = LocalDateTime.now();
    }

    public JsonNode toJson() {
        ObjectNode result = Json.newObject();
        result.put("status", status);
        result.put("message", message);
        result.put("date", date.toString());
        return result;
    }
}
