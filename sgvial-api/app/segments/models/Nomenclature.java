package segments.models;

import commons.models.RoadType;
import lombok.*;

import javax.persistence.*;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table
@Entity
public class Nomenclature {
    @Id
    @Column(name = "segment_id")
    private Long segmentId;
    @ManyToOne
    private RoadType generatingPath;
    private String generatingPathNumber;
    @ManyToOne
    private RoadType crossFrom;
    private String crossFromNumber;
    @ManyToOne
    private RoadType crossUp;
    private String crossUpNumber;

    @ToString.Exclude
    @OneToOne
    @JoinColumn(name = "segment_id", nullable = false)
    @MapsId
    private Segment segment;
}
