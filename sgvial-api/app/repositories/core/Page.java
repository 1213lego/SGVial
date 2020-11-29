package repositories.core;

import lombok.Builder;
import lombok.Data;

import java.util.function.Function;

@Builder
@Data
public class Page<E> {
    private E results;

    private final int pageSize;
    private final int pageNumber;
    private final int totalPages;

    private final long totalCount;


    public <U> Page<U> map(Function<E, U> mapper) {
        return Page.<U>builder()
                .results(mapper.apply(results))
                .pageSize(pageSize)
                .pageNumber(pageNumber)
                .totalPages(totalPages)
                .totalCount(totalCount)
                .build();
    }
}
