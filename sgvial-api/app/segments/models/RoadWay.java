package segments.models;

import commons.model.Feature;
import commons.model.Surface;
import lombok.*;

import javax.persistence.*;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table
@Entity
public class RoadWay {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Double mdr;
    private Double opi;
    private Double iri;
    @ManyToOne
    @ToString.Exclude
    private Segment segment;
    @ManyToOne
    private Surface surface;
    @ManyToOne
    private Feature feature;
}
