package roadways.models;

import commons.models.Feature;
import commons.models.Surface;
import lombok.*;
import segments.models.Segment;

import javax.persistence.*;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table
@Entity
public class Roadway {
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
