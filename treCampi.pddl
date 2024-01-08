(define (problem treCampi) (:domain CAMPI)
(:objects 
        traA1 traA2 traS1 traS2 aratro1 aratro2 seminatore1 seminatore2
        contadino1 contadino2
        cam1 cam2 cam3
)

(:init
    (contadino contadino1)
    (contadino contadino2)
    (CAMPO cam1)
    (CAMPO cam2)
    (CAMPO cam3)
    
    (TRA traA1)
    (TRA traA2)
    (TRA traS1)
    (TRA traS2)
    (TRA-ARA traA1)
    (TRA-ARA traA2)
    (TRA-SEMINA traS1)
    (TRA-SEMINA traS2)
    (ARATRO aratro1)
    (ARATRO aratro2)
    (SEMINATORE seminatore1)
    (SEMINATORE seminatore2)
    (CONNESSO cam1 cam2)
    (CONNESSO cam2 cam1)
    (CONNESSO cam2 cam3)
    (CONNESSO cam3 cam2)

    (at traA1 cam1)    
    (at traA2 cam1) 
    (at traS1 cam1)    
    (at traS2 cam1)
    (at aratro1 cam1)    
    (at aratro2 cam1)    
    (at seminatore1 cam1)    
    (at seminatore2 cam1)    
    (at contadino1 cam1)    
    (at contadino2 cam1)    
    
)

(:goal (and
   (innaffiato cam1)
   (innaffiato cam2)
   (innaffiato cam3)

)
)
)