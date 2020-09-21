(define (domain grid_world ) 
(:requirements :strips :typing) 
(:types car
agent - car
gridcell
) 
(:predicates (at ?pt1 - gridcell ?car - car) 
(up_next ?pt1 - gridcell ?pt2 - gridcell) 
(down_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward_next ?pt1 - gridcell ?pt2 - gridcell) 
(blocked ?pt1 - gridcell) 
) 
(:action UP
:parameters ( ?car1 - agent ?from - gridcell ?to - gridcell) 
:precondition (and (at ?from ?car1) (not (blocked ?to)) (up_next ?from ?to))
:effect (and (not (blocked ?from)) (not (at ?from ?car1)) (at ?to ?car1) (blocked ?to))
) 
(:action DOWN
:parameters ( ?car1 - agent ?from - gridcell ?to - gridcell) 
:precondition (and (at ?from ?car1) (not (blocked ?to)) (down_next ?from ?to))
:effect (and (not (blocked ?from)) (not (at ?from ?car1)) (at ?to ?car1) (blocked ?to))
) 
(:action FORWARD
:parameters ( ?car1 - agent ?from - gridcell ?to - gridcell) 
:precondition (and (at ?from ?car1) (not (blocked ?to)) (forward_next ?from ?to))
:effect (and (not (blocked ?from)) (not (at ?from ?car1)) (at ?to ?car1) (blocked ?to))
) 
) 
