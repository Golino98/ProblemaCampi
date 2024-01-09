(define (domain CAMPI_SENZA_PASSAGGIO)

(:requirements :typing :equality :negative-preconditions)

(:predicates (CAMPO ?campo)
		(contadino ?cont)
		(TRA ?tra)
		(TRA-ARA ?ta)
		(TRA-SEMINA ?ts)
		(ARATRO ?a)
		(SEMINATORE ?s)
		(at ?o ?c)
		(CONNESSO ?c1 ?c2)
		(arato ?c)
		(seminato ?c)
		(innaffiato ?c)
		(on ?cont ?tra)
		(attaccato ?attr ?tra)
		(hasAttrezzoAttaccato ?tra)
		(isAttaccato ?attr)
		(isSopraTrattore ?cont)
)

(:action spostaContadino
	:parameters (?cont ?campocorrente ?camposuccessivo)
	:precondition (and (contadino ?cont)
			(CAMPO ?campocorrente)
			(CAMPO ?camposuccessivo)
			(at ?cont ?campocorrente)
			(CONNESSO ?campocorrente ?camposuccessivo))
	:effect (and (at ?cont ?camposuccessivo)
			(not (at ?cont ?campocorrente)))
	)

	(:action spostaContadinoSulTrattore
	:parameters (?cont ?cont2 ?tra ?campocorrente ?camposuccessivo)
	:precondition (and 
			(contadino ?cont)
			(contadino ?cont2)
			(not(on ?cont2 ?tra))
			(not(isSopraTrattore ?cont2))
			(TRA ?tra)
			(CAMPO ?campocorrente)
			(CAMPO ?camposuccessivo)
			(at ?cont ?campocorrente)
			(at ?tra ?campocorrente)
			(on ?cont ?tra)
			(isSopraTrattore ?cont)
			(CONNESSO ?campocorrente ?camposuccessivo))
	:effect (and 
			(at ?cont ?camposuccessivo)
			(not (at ?cont ?campocorrente))
			(at ?tra ?camposuccessivo)
			(not (at ?tra ?campocorrente)))
	)

	(:action spostaDueContadiniSulTrattore
	:parameters (?cont1 ?cont2 ?tra ?campocorrente ?camposuccessivo)
	:precondition (and 
			(contadino ?cont1)
			(contadino ?cont2)
			(TRA ?tra)
			(CAMPO ?campocorrente)
			(CAMPO ?camposuccessivo)
			(at ?cont1 ?campocorrente)
			(at ?cont2 ?campocorrente)
			(at ?tra ?campocorrente)
			(on ?cont1 ?tra)
			(on ?cont2 ?tra)
			(not (= ?cont1 ?cont2))
			(isSopraTrattore ?cont1)
			(isSopraTrattore ?cont2)
			(CONNESSO ?campocorrente ?camposuccessivo))
	:effect (and 
			(at ?cont1 ?camposuccessivo)
			(not (at ?cont1 ?campocorrente))
			(at ?cont2 ?camposuccessivo)
			(not (at ?cont2 ?campocorrente))
			(at ?tra ?camposuccessivo)
			(not (at ?tra ?campocorrente)))
	)

	(:action spostaContadinoSulTrattoreConAratro
	:parameters (?cont ?cont2 ?tra ?attr ?campocorrente ?camposuccessivo)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(TRA-ARA ?tra)
			(ARATRO ?attr)
			(CAMPO ?campocorrente)
			(CAMPO ?camposuccessivo)
			(at ?cont ?campocorrente)
			(at ?tra ?campocorrente)
			(at ?attr ?campocorrente)
			(not(on ?cont2 ?tra))
			(not(isSopraTrattore ?cont2))
			(isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra)
			(on ?cont ?tra)
			(isSopraTrattore ?cont)
			(CONNESSO ?campocorrente ?camposuccessivo))
	:effect (and (at ?cont ?camposuccessivo)
			(not (at ?cont ?campocorrente))
			(at ?tra ?camposuccessivo)
			(not (at ?tra ?campocorrente))
			(at ?attr ?camposuccessivo)
			(not (at ?attr ?campocorrente)))
	)

	(:action spostaDueContadiniSulTrattoreConAratro
	:parameters (?cont1 ?cont2 ?tra ?attr ?campocorrente ?camposuccessivo)
	:precondition (and 
			(contadino ?cont1)
			(contadino ?cont2)
			(TRA ?tra)
			(TRA-ARA ?tra)
			(ARATRO ?attr)
			(CAMPO ?campocorrente)
			(CAMPO ?camposuccessivo)
			(at ?cont1 ?campocorrente)
			(at ?cont2 ?campocorrente)
			(at ?tra ?campocorrente)
			(at ?attr ?campocorrente)
			(not (= ?cont1 ?cont2))
			(isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra)
			(on ?cont1 ?tra)
			(on ?cont2 ?tra)
			(isSopraTrattore ?cont1)
			(isSopraTrattore ?cont2)
			(CONNESSO ?campocorrente ?camposuccessivo))
	:effect (and 
			(at ?cont1 ?camposuccessivo)
			(not (at ?cont1 ?campocorrente))
			(at ?cont2 ?camposuccessivo)
			(not (at ?cont2 ?campocorrente))
			(at ?tra ?camposuccessivo)
			(not (at ?tra ?campocorrente))
			(at ?attr ?camposuccessivo)
			(not (at ?attr ?campocorrente)))
	)

	(:action spostaContadinoSulTrattoreConSeminatore
	:parameters (?cont ?cont2 ?tra ?attr ?campocorrente ?camposuccessivo)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(TRA-SEMINA ?tra)
			(SEMINATORe ?attr)
			(CAMPO ?campocorrente)
			(CAMPO ?camposuccessivo)
			(at ?cont ?campocorrente)
			(at ?tra ?campocorrente)
			(at ?attr ?campocorrente)
			(on ?cont ?tra)
			(not(on ?cont2 ?tra))
			(not(isSopraTrattore ?cont2))
			(isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra)
			(isSopraTrattore ?cont)
			(CONNESSO ?campocorrente ?camposuccessivo))
	:effect (and (at ?cont ?camposuccessivo)
			(not (at ?cont ?campocorrente))
			(at ?tra ?camposuccessivo)
			(not (at ?tra ?campocorrente))
			(at ?attr ?camposuccessivo)
			(not (at ?attr ?campocorrente)))
	)

	(:action spostaDueContadiniSulTrattoreConSeminatore
	:parameters (?cont1 ?cont2 ?tra ?attr ?campocorrente ?camposuccessivo)
	:precondition (and 
			(contadino ?cont1)
			(contadino ?cont2)
			(TRA ?tra)
			(TRA-SEMINA ?tra)
			(SEMINATORe ?attr)
			(CAMPO ?campocorrente)
			(CAMPO ?camposuccessivo)
			(at ?cont1 ?campocorrente)
			(at ?cont2 ?campocorrente)
			(at ?tra ?campocorrente)
			(at ?attr ?campocorrente)
			(not (= ?cont1 ?cont2))
			(on ?cont1 ?tra)
			(on ?cont2 ?tra)
			(isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra)
			(isSopraTrattore ?cont1)
			(isSopraTrattore ?cont2)
			(CONNESSO ?campocorrente ?camposuccessivo))
	:effect (and 
			(at ?cont1 ?camposuccessivo)
			(at ?cont2 ?camposuccessivo)
			(not (at ?cont1 ?campocorrente))
			(not (at ?cont2 ?campocorrente))
			(at ?tra ?camposuccessivo)
			(not (at ?tra ?campocorrente))
			(at ?attr ?camposuccessivo)
			(not (at ?attr ?campocorrente)))
	)

	(:action sali
	:parameters (?cont ?tra ?camp)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?tra ?camp)
			(not (on ?cont ?tra))
			(not (isSopraTrattore ?cont)))
	:effect (and (on ?cont ?tra)
			(isSopraTrattore ?cont))
	)

	(:action saleSecondo
	:parameters (?cont1 ?cont2 ?tra ?camp)
	:precondition (and 
			(contadino ?cont1)
			(contadino ?cont2)
			(TRA ?tra)
			(CAMPO ?camp)
			(at ?cont2 ?camp)
			(at ?tra ?camp)
			(not (= ?cont1 ?cont2))
			(on ?cont1 ?tra)
			(isSopraTrattore ?cont1)
			(not (on ?cont2 ?tra))
			(not (isSopraTrattore ?cont2)))
	:effect (and (on ?cont2 ?tra)
			(isSopraTrattore ?cont2))
	)


	(:action scendi
	:parameters (?cont ?tra ?camp)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?tra ?camp)
			(on ?cont ?tra)
			(isSopraTrattore ?cont))
	:effect (and (not(on ?cont ?tra))
			(not (isSopraTrattore ?cont)))
	)

	(:action scendeSecondo
	:parameters (?cont1 ?cont2 ?tra ?camp)
	:precondition (and (contadino ?cont1)
			(contadino ?cont2)
			(TRA ?tra)
			(CAMPO ?camp)
			(at ?cont1 ?camp)
			(at ?cont2 ?camp)
			(at ?tra ?camp)
			(not (= ?cont1 ?cont2))
			(on ?cont1 ?tra)
			(on ?cont2 ?tra)
			(isSopraTrattore ?cont1)
			(isSopraTrattore ?cont2)
			)
	:effect (and (not(on ?cont2 ?tra))
			(not (isSopraTrattore ?cont2)))
	)

;azioni per arare

	(:action attaccaAratro
	:parameters (?cont ?tra ?attr ?camp)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(TRA-ARA ?tra)
			(ARATRO ?attr)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?tra ?camp)
			(at ?attr ?camp)
			(not (on ?cont ?tra))
			(not (isSopraTrattore ?cont))
			(not (isAttaccato ?attr))
			(not (attaccato ?attr ?tra))
			(not (hasAttrezzoAttaccato ?tra)))
	:effect (and (isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra))
	)

	(:action ara
	:parameters (?cont ?tra ?attr ?camp)
	:precondition (and (contadino ?cont)
			(TRA-ARA ?tra)
			(ARATRO ?attr)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?tra ?camp)
			(at ?attr ?camp)
			(attaccato ?attr ?tra)
			(on ?cont ?tra)
			(isSopraTrattore ?cont)
			(not (arato ?camp)))
	:effect (arato ?camp)
    )

	(:action araInDue
	:parameters (?cont ?cont2 ?tra ?attr ?camp)
	:precondition (and 
			(contadino ?cont)
			(contadino ?cont2)
			(TRA-ARA ?tra)
			(ARATRO ?attr)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?cont2 ?camp)
			(at ?tra ?camp)
			(at ?attr ?camp)
			(attaccato ?attr ?tra)
			(on ?cont ?tra)
			(on ?cont2 ?tra)
			(isSopraTrattore ?cont)
			(isSopraTrattore ?cont2)
			(not (= ?cont ?cont2))
			(not (arato ?camp)))
	:effect (arato ?camp)
    )

	(:action semina
	:parameters (?cont ?tra ?attr ?campocorrente)
	:precondition (and 
			(contadino ?cont)
			(TRA-SEMINA ?tra)
			(SEMINATORE ?attr)
			(CAMPO ?campocorrente)
			(at ?cont ?campocorrente)
			(at ?tra ?campocorrente)
			(at ?attr ?campocorrente)
			(attaccato ?attr ?tra)
			(arato ?campocorrente)
			(on ?cont ?tra)
			(isSopraTrattore ?cont)
			(not (seminato ?campocorrente)))
	:effect (seminato ?campocorrente))

	(:action seminaInDue
	:parameters (?cont ?cont2 ?tra ?attr ?campocorrente)
	:precondition (and (contadino ?cont)
			(contadino ?cont2)
			(TRA-SEMINA ?tra)
			(SEMINATORE ?attr)
			(CAMPO ?campocorrente)
			(at ?cont ?campocorrente)
			(at ?cont2 ?campocorrente)
			(at ?tra ?campocorrente)
			(at ?attr ?campocorrente)
			(attaccato ?attr ?tra)
			(arato ?campocorrente)
			(on ?cont ?tra)
			(on ?cont2 ?tra)
			(isSopraTrattore ?cont)
			(isSopraTrattore ?cont2)
			(not (seminato ?campocorrente))
			(not (= ?cont ?cont2)))
	:effect (seminato ?campocorrente))

	(:action smontaAratro
	:parameters (?cont ?tra ?attr ?camp)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(TRA-ARA ?tra)
			(ARATRO ?attr)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?tra ?camp)
			(at ?attr ?camp)
			(not (on ?cont ?tra))
			(not (isSopraTrattore ?cont))
			(isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra))
	:effect (and(not (isAttaccato ?attr))
			(not (attaccato ?attr ?tra))
			(not (hasAttrezzoAttaccato ?tra)))
	)

;azioni per seminare
	(:action attaccaSeminatore
	:parameters (?cont ?tra ?attr ?camp)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(TRA-SEMINA ?tra)
			(SEMINATORE ?attr)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?tra ?camp)
			(at ?attr ?camp)
			(not (on ?cont ?tra))
			(not (isSopraTrattore ?cont))
			(not (isAttaccato ?attr))
			(not (attaccato ?attr ?tra))
			(not (hasAttrezzoAttaccato ?tra)))
	:effect (and (isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra))
	)

	
    (:action smontaSeminatore
	:parameters (?cont ?tra ?attr ?camp)
	:precondition (and (contadino ?cont)
			(TRA ?tra)
			(TRA-SEMINA ?tra)
			(SEMINATORE ?attr)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(at ?tra ?camp)
			(at ?attr ?camp)
			(not (on ?cont ?tra))
			(not (isSopraTrattore ?cont))
			(isAttaccato ?attr)
			(hasAttrezzoAttaccato ?tra)
			(attaccato ?attr ?tra))
	:effect (and(not (isAttaccato ?attr))
			(not (attaccato ?attr ?tra))
			(not (hasAttrezzoAttaccato ?tra)))
	)

;azioni per innaffiare

	(:action innaffia
	:parameters (?cont ?camp)
	:precondition (and (contadino ?cont)
			(CAMPO ?camp)
			(at ?cont ?camp)
			(seminato ?camp)
			(not (innaffiato ?camp))
			(not (isSopraTrattore ?cont))
			)
	:effect (innaffiato ?camp)
    )
)