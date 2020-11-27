package models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

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
    private Segment segment;
    @ManyToOne
    private Surface surface;
    @ManyToOne
    private Feature feature;
}
