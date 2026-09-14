package entities;

import java.time.Instant;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table (name = "tb_order")	

public class Order {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant moment;
    
	@Enumerated(EnumType.STRING)
    @Column(nullable = false)
	private OrderStatus status;
	
		
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "client_id", nullable = false)
    private User client;
//
//    @OneToOne(mappedBy = "order", cascade = CascadeType.ALL)
//    private Payment payment;

//    @OneToMany(mappedBy = "id.order")
//    private Set<OrderItem> items = new HashSet<>();
   
}