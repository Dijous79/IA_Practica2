;; VARIABLES GLOBALS

(defglobal ?*exercicis* = (create$ ""))
(defglobal ?*copia_exercicis* = (create$ ""))
(defglobal ?*parts_del_cos_no_treballables* = (create$))
(defglobal ?*parts_del_cos_prioritaries* = (create$))

;; MODULS
(defmodule MAIN (export ?ALL))

;; Modul per extreure informacio del usuari i abtreure dades
(defmodule RECOLLIR
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule ABSTREURE
    (import MAIN ?ALL)
    (import RECOLLIR ?ALL)
    (export ?ALL)
)

;; Módul per limitar exercicis per les limitacions
(defmodule LIMITAR
    (import MAIN ?ALL)
    (import RECOLLIR ?ALL)
    (import ABSTREURE ?ALL)
    (export ?ALL)
)

;; Genera la rutina d'exercicis
(defmodule PROCESAR
    (import MAIN ?ALL)
    (import RECOLLIR ?ALL)
    (import ABSTREURE ?ALL)
    (import LIMITAR ?ALL)
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
(deffunction MAIN::demanar_multiples_respostes (?pregunta $?opcions)
    (progn$
        (?var ?opcions)
        (lowcase ?var)
    )
    (printout t ?pregunta crlf)
    (printout t "Introdueix el nom de totes les opcions que vulguis marcar en la mateixa linea separades per espai" crlf)
    (printout t "Opcions: " crlf)
    (bind ?i 1)
    (while (<= ?i (length$ ?opcions)) do
        (bind ?opcio (nth$ ?i ?opcions))
        (printout t ?i ". " ?opcio crlf)
        (bind ?i (+ ?i 1))
    )

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
    (printout t "Benvingut a la teva rutina d'exercicis personalitzada!" crlf)
    (printout t "Per iniciar, ens caldra una mica d'informacio sobre tu." crlf)
    

    (bind ?objectiuMinutsDiaris (demanar_int "Quants minuts al dia vols dedicar a fer exercici? (Indica un multiple de 10)" 0 1440))
    (send ?usuari put-TempsDisponible ?objectiuMinutsDiaris)

	(bind ?teLimitacions (demanar_boolea "Tens alguna patologia o limitacio?"))
    (if ?teLimitacions then
        (bind ?instancies (find-all-instances ((?inst Limitacions)) TRUE))
        (bind ?limitacions_posibles (create$))
        (foreach ?i ?instancies
            (bind ?nom (send ?i get-nomLimitacio))
            (bind ?limitacions_posibles (create$ ?limitacions_posibles ?nom))        
        )
        (bind ?res (demanar_multiples_respostes "Digues quines d'entre les seguents opcions:" ?limitacions_posibles))
        ;(bind ?limitacio Hombro_Congelado)
        (send ?usuari put-TeLimitacions ?res)
        (assert (abstreure_parts_no_treballables))
    )

    (printout t "Inidcans els teus objectius" crlf)
    (bind ?instancies (find-all-instances ((?inst Objectiu)) TRUE))
    (bind ?objectius_posibles (create$))
    (foreach ?i ?instancies
        (bind ?nom (send ?i get-nomObjectiu))
        (bind ?objectius_posibles (create$ ?objectius_posibles ?nom))        
    )
    (bind ?res (demanar_multiples_respostes "Digues quines d'entre les seguents opcions:" ?objectius_posibles))
    
    (send ?usuari put-TeObjectius ?res)
    (assert (abstreure_parts_es_volen_treballar))
    

    
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
    (bind ?limitacions (send ?usuari get-TeLimitacions))
    (bind ?aux (create$))

    
    (bind ?instancies (find-all-instances ((?inst Limitacions)) (member$ ?inst:nomLimitacio ?limitacions)))
    (foreach ?i ?instancies
        (bind ?queBloqueja (send ?i get-Bloquejos))
        (bind ?gravetat (send ?i get-GrauLesio))
        (if (eq ?gravetat invalid) then
        (bind ?j 1)
            (while (<= ?j (length$ ?queBloqueja)) do
                (bind ?bloqueig_nth (nth$ ?j ?queBloqueja))
                (if(not(member$ ?bloqueig_nth ?*parts_del_cos_no_treballables*))
                    then(bind ?*parts_del_cos_no_treballables* (create$ ?*parts_del_cos_no_treballables* ?bloqueig_nth))
                )
                (bind ?j (+ ?j 1))
            )
        )
    )
          
    (assert (filtra_patologies))
    (retract ?fet)
    
)

(defrule abstraccio_parts_es_volen_treballar ""
    ?fet <- (abstreure_parts_es_volen_treballar)
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?objectius (send ?usuari get-TeObjectius))
    (bind ?aux (create$))

    
    (bind ?instancies (find-all-instances ((?inst Objectiu)) (member$ ?inst:nomObjectiu ?objectius)))
    (foreach ?i ?instancies
        (bind ?queBusca (send ?i get-Que_Busca_Treballar))
        (bind ?j 1)
        (while (<= ?j (length$ ?queBusca)) do
            (bind ?busca_nth (nth$ ?j ?queBusca))
            (if(not(member$ ?busca_nth ?*parts_del_cos_prioritaries*))
                then(bind ?*parts_del_cos_prioritaries* (create$ ?*parts_del_cos_prioritaries* ?busca_nth))
            )
            (bind ?j (+ ?j 1))
        )
        
    )
          
    (assert (filtra_prioritats))
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
        (bind ?trobat TRUE)
        (break)
        )
    )
    ?trobat
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

(defrule LIMITAR::exercicis_sobre_objectiu ""
    ?fet <- (filtra_prioritats)
    ?usuari <- (object(is-a Usuari))
    =>

    (bind ?i 1)
    (bind ?aux (create$))

    (while (<= ?i (length$ ?*exercicis*)) do
        (bind ?exercici_nth (nth$ ?i ?*exercicis*))
        (bind ?queTreballa (send ?exercici_nth get-Que_Treballa))
        (if (tenen_element_en_comu ?*parts_del_cos_prioritaries* ?queTreballa)
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
    ;?fact <- (nombre ?value)
    ;?minuts <- (objectiuMinutsDiaris ?value)
    =>
    (bind ?minuts (send ?usuari get-TempsDisponible))
    (bind ?numeroExercicis (/ ?minuts 10))

    (bind ?i 1)
    (bind ?aux (create$))

    (printout t crlf "Aqui tens els teus exercicis per la rutina (10 min per exercicis):" crlf)

    (printout t "Dilluns:" crlf crlf)
    
    (while (< (length$ ?aux) ?numeroExercicis) do
        (bind ?num (mod ?i (+ (length$ ?*exercicis*) 1)))
        (if (eq ?num 0) then
            (bind ?num 1)
            (bind ?i (+ ?i 1))
        )
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))
        (bind ?i (+ ?i 1))
        
    )
    
    (printout t (implode$ ?aux) crlf crlf)

   
    (bind ?aux (create$))

    (printout t "Dimarts:" crlf crlf)
    
    (while (< (length$ ?aux) ?numeroExercicis) do
        (bind ?num (mod ?i (+ (length$ ?*exercicis*) 1)))
        (if (eq ?num 0) then
            (bind ?num 1)
            (bind ?i (+ ?i 1))
        )
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))
        (bind ?i (+ ?i 1))
    )

    (printout t (implode$ ?aux) crlf crlf)


  
    (bind ?aux (create$))

    (printout t "Dimecres:" crlf crlf)
    
    (while (< (length$ ?aux) ?numeroExercicis) do
        (bind ?num (mod ?i (+ (length$ ?*exercicis*) 1)))
        (if (eq ?num 0) then
            (bind ?num 1)
            (bind ?i (+ ?i 1))
        )
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))
        (bind ?i (+ ?i 1))
    )

    (printout t (implode$ ?aux) crlf crlf)

   
    (bind ?aux (create$))

    (printout t "Dijous:" crlf crlf)
    
    (while (< (length$ ?aux) ?numeroExercicis) do
        (bind ?num (mod ?i (+ (length$ ?*exercicis*) 1)))
        (if (eq ?num 0) then
            (bind ?num 1)
            (bind ?i (+ ?i 1))
        )
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))
        (bind ?i (+ ?i 1))
    )

    (printout t (implode$ ?aux) crlf crlf)

   
    (bind ?aux (create$))

    (printout t "Divendres:" crlf crlf)
    
    (while (< (length$ ?aux) ?numeroExercicis) do
        (bind ?num (mod ?i (+ (length$ ?*exercicis*) 1)))
        (if (eq ?num 0) then
            (bind ?num 1)
            (bind ?i (+ ?i 1))
        )
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))
        (bind ?i (+ ?i 1))
    )

    (printout t (implode$ ?aux) crlf crlf)

    
    (bind ?aux (create$))

    (printout t "Dissabte:" crlf crlf)
    
    (while (< (length$ ?aux) ?numeroExercicis) do
        (bind ?num (mod ?i (+ (length$ ?*exercicis*) 1)))
        (if (eq ?num 0) then
            (bind ?num 1)
            (bind ?i (+ ?i 1))
        )
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))
        (bind ?i (+ ?i 1))
    )

    (printout t (implode$ ?aux) crlf crlf)

    
    (bind ?aux (create$))

    (printout t "Diumenge:" crlf crlf)
    
    (while (< (length$ ?aux) ?numeroExercicis) do
        (bind ?num (mod ?i (+ (length$ ?*exercicis*) 1)))
        (if (eq ?num 0) then
            (bind ?num 1)
            (bind ?i (+ ?i 1))
        )
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?aux (create$ ?aux ?exercici_nth))
        (bind ?i (+ ?i 1))
    )

    (printout t (implode$ ?aux) crlf crlf)


    (printout t "Programa finalitzat" crlf)
)
