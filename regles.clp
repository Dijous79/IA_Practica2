;; VARIABLES GLOBALS

(defglobal ?*exercicis* = (create$ ""))
(defglobal ?*copia_exercicis* = (create$ ""))
(defglobal ?*parts_del_cos_no_treballables* = (create$))

;; MODULS
(defmodule MAIN (export ?ALL))

;; Modul per extreure informacio del usuari i abtreure dades
(defmodule RECOLLIR
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule ABSTREURE
    (import MAIN ?ALL)
    (export ?ALL)
)

;; Módul per limitar exercicis per les limitacions
(defmodule LIMITAR
    (import MAIN ?ALL)
    (export ?ALL)
)

;; Genera la rutina d'exercicis
(defmodule PROCESAR
    (import MAIN ?ALL)
    (export ?ALL)
)


;; ---------------------------- FUNCIONS ----------------------------

;; ----------- FUNCIONS MAIN -----------

(deffunction MAIN::demanar_float(?pregunta ?min ?max)
    (printout t ?pregunta crlf)
    (printout t "Insereix un valor amb mínim un decimal separat per un punt (Ex 5.0)" crlf)
    (bind ?res (read))
    (while (or (not (floatp ?res)) (>= ?res ?max) (<= ?res ?min)) do
        (printout t crlf)
        (printout t "Valor no valid o format incorrecte, siusplau prova-ho de nou:" crlf)
        (printout t ?pregunta crlf)
        (bind ?res (read))
    )
    (printout t crlf)
    (return ?res)
)

(deffunction MAIN::demanar_int(?pregunta ?min ?max)
    (printout t ?pregunta crlf)
    (bind ?res (read))
    (while (or (not (integerp ?res)) (>= ?res ?max) (<= ?res ?min)) do
        (printout t crlf)
        (printout t "Valor no valid, siusplau prova-ho de nou:" crlf)
        (printout t ?pregunta crlf)
        (bind ?res (read))
    )
    (printout t crlf)
    (return ?res)
)

(deffunction MAIN::demanar_opcions (?pregunta $?opcions)
    (printout t ?pregunta clrf)
    (printout t "Respon amb una de les seguents opcions: " crlf $?opcions crlf)
    (bind ?res (read))
    (while (not (member$ ?res $?opcions)) do
        (printout t crlf)
        (printout t "La teva resposta no forma part de les opcions, siusplau prova-ho de nou:" crlf)
        (printout t ?pregunta)
        (printout t " Respon amb una de les seguents opcions: " $?opcions crlf)
        (bind ?res (read))
    )
    (printout t crlf)
    (return ?res)
)
;;funcio no testejada
(deffunction MAIN::demanar_boolea (?pregunta)
   (printout t ?pregunta crlf)
   (printout t "Respon amb Si o No:" crlf)
   (bind ?res (read))
   (while TRUE do
      (if (eq (lowcase ?res) si)
         then
         (return TRUE)
         else
         (if (eq (lowcase ?res) no)
            then
            (return FALSE)
            else
            (printout t "Respon amb Si o No:" crlf)
            (bind ?res (read))
         )
      )
   )
)

;;funcio no testejada
(deffunction MAIN::demanar_multiples_respostes (?pregunta $?valores-permesos)
    (progn$
        (?var ?valores-permesos)
        (lowcase ?var)
    )
    (printout t ?pregunta crlf)
    (printout t "Introdueix l'opcio seguida per la seva gravetat separat amb espais" crlf)
    

    (bind ?res (readline))
    (bind ?res (explode$ ?res)) 
    
   
    (printout t crlf)
    ?res
)

;; ----------- FUNCIONS RECOLLIR -----------


;; ----------- FUNCIONS DESCARTAR -----------



;; ----------- FUNCIONS PROCESAR -----------



;; ----------- FUNCIONS MOSTRAR -----------



;; ---------------------------- MODUL MAIN ----------------------------

;; MODULO MAIN
(defrule MAIN::inici
   (declare (salience 10))
   =>
   (make-instance Persona of Usuari)
   
    (printout t "######                                                             #######         " crlf)
	(printout t "#     #  #####     ##     ####    #####     #     ####     ##         #       ##   " crlf) 
	(printout t "#     #  #    #   #  #   #    #     #       #    #    #   #  #        #      #  #  " crlf) 
	(printout t "######   #    #  #    #  #          #       #    #       #    #       #     #    # " crlf)
	(printout t "#        #####   ######  #          #       #    #       ######       #     ###### " crlf) 
	(printout t "#        #   #   #    #  #    #     #       #    #    #  #    #       #     #    # " crlf) 
	(printout t "#        #    #  #    #   ####      #       #     ####   #    #    #######  #    # " crlf crlf crlf crlf)
    (system "timeout /t 1 /nobreak")
    (printout t "#######               #       #                     ####                                         " crlf)
	(printout t "   #     #     #      # #     #    ####   #####    #    #    ####     #    #   ####   #    #     " crlf) 
	(printout t "   #     # # # #      #  #    #   #    #    #      #    #   #    #    #    #  #    #  #    #     " crlf) 
	(printout t "   #     #  #  #      #   #   #   #    #    #      #        #    #    #    #  #       ######     " crlf)
	(printout t "   #     #     #      #    #  #   #    #    #      #        #    #    #    #  #       #    #     " crlf) 
	(printout t "   #     #     #      #     # #   #    #    #      #    #   #    #    #    #  #    #  #    #     " crlf) 
	(printout t "#######  #     #      #       #    ####     #       ####     ####      ####    ####   #    #     " crlf crlf crlf crlf)
    (system "timeout /t 1 /nobreak")
    (printout t "######" crlf)
	(printout t "#     #   ####   #####    ##    #####   ####    " crlf) 
	(printout t "#     #  #    #    #     #  #     #    #    #   " crlf) 
	(printout t "######   #    #    #    #    #    #    #    #   " crlf)
	(printout t "#        #    #    #    ######    #    #    #   " crlf) 
	(printout t "#        #    #    #    #    #    #    #    #   " crlf) 
	(printout t "#         ####     #    #    #    #     ####    " crlf crlf crlf)

   (system "timeout /t 1 /nobreak")
   (printout t crlf)
   
   (focus RECOLLIR)
)

;; ---------------------------- MODUL RECOLLIR ----------------------------

(defrule RECOLLIR::creacioPersona
	(declare (salience 10))
    ?usuari <- (object(is-a Usuari))
	=> 
	(bind ?teLimitacions (demanar_boolea "Tens alguna patologia o limitacio?"))
    (if ?teLimitacions then
        (bind ?limitacions_posibles (create$ Tendinitis_Manguito_Rotador Fascitis_Plantar Hombro_Congelado))
        ;;(bind ?res (demanar_multiples_respostes "Digues una limitacio i gravetat" ?limitacions_posibles))
        ;;(bind ?limitacio (nth$ 1 ?res))
        ;;(bind ?gravetat (nth$ 2 ?res))
        (bind ?limitacio Hombro_Congelado)
        (modify ?usuari (Te (create$ ?limitacio)))
    )
    (assert (abstreure_parts_no_treballables))
	(focus ABSTREURE)
)

;; ---------------------------- MODUL ABSTREURE ----------------------------

(defrule ABSTREURE::inicializar ""
    (declare (salience 10))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?*exercicis* (find-all-instances ((?inst Exercici)) TRUE))
    (bind ?*copia_exercicis* ?*exercicis*)
)

(defrule ABSTREURE::abstraccio_parts_no_treballables ""
    ?fet <- (abstreure_parts_no_treballables)
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?limitacions (send ?usuari get-Te))

    (bind ?i 1)
    (bind ?aux (create$))

    (while (<= ?i (length$ ?limitacions)) do
        (bind ?limitacio_nth (nth$ ?i ?limitacions))
        (bind ?queBloqueja (send ?limitacio_nth get-Bloquejos))
        (bind ?gravetat (send ?limitacio_nth get-GrauLesio))
        (if (eq ?gravetat "invalid") then
            (bind ?j 1)
            (while (<= ?j (length$ ?queBloqueja)) do
                (bind ?bloqueig_nth (nth$ ?j ?queBloqueja))
                (if(not(member$ ?bloqueig_nth ?*parts_del_cos_no_treballables*))
                    then(bind ?*parts_del_cos_no_treballables* (create$ ?*parts_del_cos_no_treballables* ?bloqueig_nth))
                )
                (bind ?j (+ ?j 1))
            )
        )
        (bind ?i (+ ?i 1))
    )
    (assert (filtra_patologies))
    (retract ?fet)
    
)

(defrule ABSTREURE::finalizar_abstraccion ""
    (declare (salience -10))
    ?usuari <- (object(is-a Usuari))
    =>
    (focus LIMITAR)
)


;; ---------------------------- MODUL LIMITAR ----------------------------

;; aqui definim defrules que tinguin en compte les limitacions i ens bloquejin els exercicis que no pot fer


(deffunction MAIN::tenen_element_en_comu (?llista1 ?llista2)
    (bind ?trobat FALSE)
    (foreach ?element ?llista1
        (if (member$ ?element ?llista2) then
        (bind ?found TRUE)
        (break)
        )
    )
    ?found
)

(defrule LIMITAR::exercicis_sobre_lesio_grau_alt ""
    ?fet <- (filtra_patologies)
    ?usuari <- (object(is-a Usuari))
    =>

    (bind ?i 1)
    (bind ?aux (create$))

    (while (<= ?i (length$ ?*exercicis*)) do
        (bind ?exercici_nth (nth$ ?i ?*exercicis*))
        (bind ?queTreball (send ?exercici_nth get-Que_Treballa))
        (if (not(tenen_element_en_comu ?*parts_del_cos_no_treballables* ?queTreball))
            then (bind ?aux (create$ ?aux ?exercici_nth)))
        (bind ?i (+ ?i 1))
    )   

    (bind ?*exercicis* ?aux)

    (retract ?fet)
)


(defrule LIMITAR::canviProcesar
	(declare (salience -20))
	=>
	(focus PROCESAR)
)

;; ---------------------------- MODUL PROCESAR ----------------------------


(defrule PROCESAR::fer_rutina ""
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?i 1)
    (bind ?aux (create$))

    (while (and (<= ?i (length$ ?*exercicis*)) (< (length$ ?aux) 3)) do
        (bind ?exercici_nth (nth$ ?i ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))

        (bind ?i (+ ?i 1))
    )
        
    (bind ?*exercicis* ?aux)

    (printout t crlf "Exercicis per la rutina:" crlf)
    (printout t (implode$ ?*exercicis*) crlf crlf)


    (printout t "Programa finalitzat" crlf)
)
