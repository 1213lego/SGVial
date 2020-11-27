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
public class Segment {
    @Id
    private Long id;
    @ManyToOne(optional = false)
    private RoadType roadType;
    private Double length;
    private Short stratum;
    @OneToOne(mappedBy = "segment")
    private Nomenclature nomenclature;
}
