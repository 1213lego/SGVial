package segments.models;

import commons.model.State;
import lombok.*;

import javax.persistence.*;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table
@Entity
public class Curb {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private State state;
    @ManyToOne
    @ToString.Exclude
    private Segment segment;
    private Double length;
    @Column(name = "\"order\"")
    private Integer order;
    private Double conditionIndex;
}
