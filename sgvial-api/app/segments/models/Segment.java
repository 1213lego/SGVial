package segments.models;

import commons.model.RoadType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table
@Entity
public class Segment {
    @Id
    private Long id;
    @ManyToOne(optional = false)
    private RoadType roadType;
    private Double length;
    private Short stratum;

    @OneToOne(mappedBy = "segment", cascade = CascadeType.PERSIST, optional = false)
    private Nomenclature nomenclature;

    @OneToMany(mappedBy = "segment", cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    private List<Roadway> roadways;

    @OneToMany(mappedBy = "segment", cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    private List<Curb> curbs;
}
