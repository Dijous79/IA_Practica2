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
    

    (bind ?objectiuMinutsDiaris (demanar_int "Quants minuts al dia vols dedicar a fer exercici?" 0 1440))
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
        (send ?usuari put-Te ?res)
    )

    ;; preguntes salut
    ;;(printout t "Siusplau respon a les següents preguntes sobre la teva salut" crlf)
    ;;(bind ?edat (demanar_int "Quina edat tens?" 0 120))
    ;;(bind ?estatura (demanar_float "En metres, quant mesures?" 0.0 3.0))
    ;;(bind ?pes (demanar_float "En quilograms, quant peses?" 30.0 300.0))
    ;;IMC = index de massa corporal pes/estatura^2
    ;;(bind ?valorIMC (/ ?pes (* ?estatura ?estatura)))
    ;;(bind ?presioMax (demanar_int "En mmHg, quina és la teva pressiò sistòlica?" 0 250))
    ;;(bind ?presioMin (demanar_int "En mmHg, quina és la teva pressiò diastòlica?" 0 200))
    ;;(bind ?horesDesportSetmanals (demanar_int "Quantes hores d'esport fas a la setmana?" 0 40))

    ;;(if (>= ?horesDesportSetmanals 10) then (bind ?nivellFisicPersona "moltAlta")
    ;;    else (if (>= ?horesDesportSetmanals 6) then (bind ?nivellFisicPersona "alta")
    ;;        else (if (> ?horesDesportSetmanals 2) then (bind ?nivellFisicPersona "moderada")
    ;;            else (if (> ?horesDesportSetmanals 0) then (bind ?nivellFisicPersona "baixa")
    ;;                else (bind ?nivellFisicPersona "moltBaixa")
    ;;            ) 
    ;;        )
    ;;    )
    ;;)

    ;; preguntes dieta
    ;;(printout t "Siusplau respon a les següents preguntes sobre la teva dieta" crlf)
    ;;(bind ?apatsDiaris (demanar_int "Quants apats fas al dia?" 1 6))
    ;;(bind ?pica (demanar_opcions "Piques entre hores?" Si No))
    ;;(bind ?pecesFruita (demanar_opcions "Quantes peçes de fruita menjes al dia?" 0-1 2-3 4+))
    ;;(bind ?peixSetmanal (demanar_opcions "Quantes vegades menjes peix a la setmana?" 0-1 2-3 4+))
    ;;(bind ?fregitSetmanal (demanar_opcions "Quantes vegades menjes fregits a la setmana?" 0-1 2-3 4+))
    ;;(bind ?carnSetmanal (demanar_opcions "Quantes vegades menjes carn a la setmana?" 0-2 3-5 6+))
    ;;(bind ?sal (demanar_opcions "Com valores el teu consum de sal?" Baix Mig Alt))

    ;; preguntes objectius
    ;;(printout t "Siusplau respon a les següents preguntes sobre els teus objectius" crlf)
    ;;(bind ?tipusPrograma (demanar_opcions "Quin tipus de programa vols?" 
    ;;                    Manteniment Posarse_En_Forma Baixar_De_Pes Muscular Flexbilitat Equilibri Enfortir_Esquena))
    ;;(bind ?objectiuMinutsDiaris (demanar_int "Quants minuts vols entrenar al dia?" 0 500))


    ;; abstraccio de l'edat
    ;;(if (<= ?edat 12) then (bind ?edatAbs "infantil")
    ;;    else (if (<= ?edat 18) then (bind ?edatAbs "adolescent")
    ;;        else (if (<= ?edat 30) then (bind ?edatAbs "jove")
    ;;            else (if (<= ?edat 55) then (bind ?edatAbs "adult")
    ;;                else (bind ?edatAbs "major")
    ;;            )
    ;;        )
    ;;    )
    ;;)

    ;; abstraccio de l'IMC
    ;;(if (<= ?valorIMC 18.5) then (bind ?imcAbs "baix")
    ;;    else (if (<= ?valorIMC 24.9) then (bind ?imcAbs "normal")
    ;;        else (if (<= ?valorIMC 29.9) then (bind ?imcAbs "sobrepes")
    ;;            else (bind ?imcAbs "obes")
    ;;        )
    ;;    )
    ;;)


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
