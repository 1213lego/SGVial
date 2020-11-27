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
public class Nomenclature {
    @Id
    @Column(name = "segment_id")
    private Long segmentId;
    @OneToOne
    @JoinColumn(name = "segment_id", nullable = false)
    private Segment segment;
    @ManyToOne
    private RoadType generatingPath;
    private String generatingPathNumber;
    @ManyToOne
    private RoadType crossFrom;
    private String crossFromNumber;
    @ManyToOne
    private RoadType crossUp;
    private String crossUpNumber;
}
