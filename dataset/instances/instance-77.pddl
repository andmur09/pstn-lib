(define (problem instance-77)
(:domain drone-delivery)
(:objects
 d0 d1 d2 d3 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 m1 - medicine
 )
(:init

	;; depots
	(is-depot l9)
	(is-depot l3)

	;; drones
	(located-at d0 l3)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 50)
	(= (battery-capacity d0) 150)
	(= (battery-level d0) 150)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 4)
	(located-at d1 l3)
	(noloading d1)
	(nocharging d1)
	(= (load-capacity d1) 50)
	(= (battery-capacity d1) 150)
	(= (battery-level d1) 150)
	(= (battery-rate d1) 1)
	(= (recharge-rate d1) 4)
	(located-at d2 l3)
	(noloading d2)
	(nocharging d2)
	(= (load-capacity d2) 10)
	(= (battery-capacity d2) 50)
	(= (battery-level d2) 50)
	(= (battery-rate d2) 1)
	(= (recharge-rate d2) 10)
	(located-at d3 l3)
	(noloading d3)
	(nocharging d3)
	(= (load-capacity d3) 10)
	(= (battery-capacity d3) 50)
	(= (battery-level d3) 50)
	(= (battery-rate d3) 1)
	(= (recharge-rate d3) 10)

	;; medicines
	(located-at m0 l3)
	(noexpired m0)
	(at 180(not (noexpired m0)))
	(= (weight m0) 1)
	(located-at m1 l6)
	(noexpired m1)
	(at 150(not (noexpired m1)))
	(= (weight m1) 2)

	;; locations
	(connected l0 l1)
	(= (travel-time l0 l1) 20)
	(connected l0 l3)
	(= (travel-time l0 l3) 40)
	(connected l0 l9)
	(= (travel-time l0 l9) 30)
	(connected l1 l0)
	(= (travel-time l1 l0) 20)
	(connected l1 l3)
	(= (travel-time l1 l3) 90)
	(connected l2 l7)
	(= (travel-time l2 l7) 30)
	(connected l2 l8)
	(= (travel-time l2 l8) 100)
	(connected l2 l9)
	(= (travel-time l2 l9) 50)
	(connected l3 l0)
	(= (travel-time l3 l0) 40)
	(connected l3 l1)
	(= (travel-time l3 l1) 90)
	(connected l3 l4)
	(= (travel-time l3 l4) 30)
	(connected l3 l5)
	(= (travel-time l3 l5) 10)
	(connected l3 l6)
	(= (travel-time l3 l6) 30)
	(connected l3 l7)
	(= (travel-time l3 l7) 30)
	(connected l3 l9)
	(= (travel-time l3 l9) 20)
	(connected l4 l3)
	(= (travel-time l4 l3) 30)
	(connected l4 l8)
	(= (travel-time l4 l8) 70)
	(connected l4 l9)
	(= (travel-time l4 l9) 20)
	(connected l5 l3)
	(= (travel-time l5 l3) 10)
	(connected l5 l7)
	(= (travel-time l5 l7) 20)
	(connected l5 l8)
	(= (travel-time l5 l8) 30)
	(connected l6 l3)
	(= (travel-time l6 l3) 30)
	(connected l6 l7)
	(= (travel-time l6 l7) 20)
	(connected l6 l9)
	(= (travel-time l6 l9) 20)
	(connected l7 l2)
	(= (travel-time l7 l2) 30)
	(connected l7 l3)
	(= (travel-time l7 l3) 30)
	(connected l7 l5)
	(= (travel-time l7 l5) 20)
	(connected l7 l6)
	(= (travel-time l7 l6) 20)
	(connected l8 l2)
	(= (travel-time l8 l2) 100)
	(connected l8 l4)
	(= (travel-time l8 l4) 70)
	(connected l8 l5)
	(= (travel-time l8 l5) 30)
	(connected l8 l9)
	(= (travel-time l8 l9) 20)
	(connected l9 l0)
	(= (travel-time l9 l0) 30)
	(connected l9 l2)
	(= (travel-time l9 l2) 50)
	(connected l9 l3)
	(= (travel-time l9 l3) 20)
	(connected l9 l4)
	(= (travel-time l9 l4) 20)
	(connected l9 l6)
	(= (travel-time l9 l6) 20)
	(connected l9 l8)
	(= (travel-time l9 l8) 20)
)
(:goal (and
	(delivered m0 l1)
	(delivered m1 l8)
)))