(define (problem treCampi) (:domain CAMPI_SENZA_PASSAGGIO)
(:objects 
        traA1 aratro1  seminatore1 seminatore2
        contadino1 contadino2
        cam1 cam2 cam3 cam4 cam5 cam6 cam7 cam8 cam9
)

(:init
    (contadino contadino1)
    (contadino contadino2)
    (CAMPO cam1)
    (CAMPO cam2)
    (CAMPO cam3)
    (CAMPO cam4)
    (CAMPO cam5)
    (CAMPO cam6)
    (CAMPO cam7)
    (CAMPO cam8)
    (CAMPO cam9)

    (TRA traA1)
    (TRA-ARA traA1)
    (TRA-SEMINA traA1)
    (ARATRO aratro1)

    (SEMINATORE seminatore1)
    (SEMINATORE seminatore2)
    (CONNESSO cam1 cam2)
    (CONNESSO cam2 cam1)
    (CONNESSO cam2 cam3)
    (CONNESSO cam3 cam2)
    (CONNESSO cam4 cam3)
    (CONNESSO cam5 cam4)
    (CONNESSO cam3 cam4)
    (CONNESSO cam4 cam5)
    (CONNESSO cam5 cam6)
    (CONNESSO cam6 cam7)
    (CONNESSO cam7 cam8)
    (CONNESSO cam8 cam9)
    (CONNESSO cam9 cam8)
    (CONNESSO cam8 cam7)
    (CONNESSO cam7 cam6)
    (CONNESSO cam6 cam5)

    (at traA1 cam1)

    (at aratro1 cam1)

    (at seminatore1 cam1)
    (at seminatore2 cam1)
    (at contadino1 cam1)
    (at contadino2 cam1)

)

(:goal (and
   (at contadino1 cam9)
   (at contadino2 cam9)
   (at seminatore1 cam9)
   (at seminatore2 cam9)

)
)
)