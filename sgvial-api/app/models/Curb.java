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
public class Curb {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private State state;
    @ManyToOne
    private Segment segment;
    private Double length;
    @Column(name = "\"order\"")
    private Integer order;
    private Double conditionIndex;
}
