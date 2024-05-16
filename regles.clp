;; VARIABLES GLOBALS

;; MODULS
(defmodule MAIN (export ?ALL))

;; Modul per extreure informacio del usuari i abtreure dades
(defmodule RECOLLIR
    (import MAIN ?ALL)
    (export ?ALL)
)

;; Módul per descartar exercicis per les limitacions
(defmodule DESCARTAR
    (import MAIN ?ALL)
    (export ?ALL)
)

;; Genera la rutina d'exercicis
(defmodule PROCESAR
    (import MAIN ?ALL)
    (export ?ALL)
)

;; Mostra la rutina d'exercicis
(defmodule MOSTRAR
    (import MAIN ?ALL)
    (export ?ALL)
)

;; ---------------------------- FUNCIONS ----------------------------

;; ----------- FUNCIONS MAIN -----------

(deffunction MAIN::demanar_float(?pregunta ?min ?max)
    (printout t ?pregunta crlf)
    (printout t "Insereix un valor amb mínim un decimal sepparat per un punt (Ex 5.0)" crlf)
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
        (printout t "Valor no válido, por favor inténtalo de nuevo:" crlf)
        (printout t ?pregunta crlf)
        (bind ?res (read))
    )
    (printout t crlf)
    (return ?res)
)

(deffunction MAIN::demanar_opcions (?pregunta $?opcions)
    (printout t ?pregunta)
    (printout t " Respon amb una de les seguents opcions: " crlf $?opcions crlf)
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

;; ----------- FUNCIONS RECOLLIR -----------

(deffunction RECOLLIR::instanciacioPersona()
    ;; preguntes salut
    (printout t "Siusplau respon a les següents preguntes sobre la teva salut" crlf)
    (bind ?edat (demanar_int "Quina edat tens?" 0 120))
    (bind ?estatura (demanar_float "En metres, quant mesures?" 0.0 3.0))
    (bind ?pes (demanar_float "En quilograms, quant peses?" 30.0 300.0))
    ;;IMC = index de massa corporal pes/estatura^2
    (bind ?valorIMC (/ ?pes (* ?estatura ?estatura)))
    (bind ?presioMax (demanar_int "En mmHg, quina és la teva pressiò sistòlica?" 0 250))
    (bind ?presioMin (demanar_int "En mmHg, quina és la teva pressiò diastòlica?" 0 200))
    (bind ?minutsCaminatsDiaris (demanar_int "Aproximadament, quants minuts camines al dia?" 0 500))
    (bind ?horesDesportSetmanals (demanar_int "Quantes hores d'esport fas a la setmana?" 0 40))
    (bind ?estatNormalEnLaFeina (demanar_opcions "En el teu lloc de treball o estudi com estas noramlment" Dret Segut))

    ;; preguntes dieta
    (printout t "Siusplau respon a les següents preguntes sobre la teva dieta" crlf)
    (bind ?apatsDiaris (demanar_int "Quants apats fas al dia?" 1 6))
    (bind ?pica (demanar_opcions "Piques entre hores?" Si No))
    (bind ?pecesFruita (demanar_opcions "Quantes peçes de fruita menjes al dia?" 0-1 2-3 4+))
    (bind ?peixSetmanal (demanar_opcions "Quantes vegades menjes peix a la setmana?" 0-1 2-3 4+))
    (bind ?fregitSetmanal (demanar_opcions "Quantes vegades menjes fregits a la setmana?" 0-1 2-3 4+))
    (bind ?carnSetmanal (demanar_opcions "Quantes vegades menjes carn a la setmana?" 0-2 3-5 6+))
    (bind ?sal (demanar_opcions "Com valores el teu consum de sal?" Baix Mig Alt))

    ;; preguntes objectius
    (printout t "Siusplau respon a les següents preguntes sobre els teus objectius" crlf)
    (bind ?tipusPrograma (demanar_opcions "Quin tipus de programa vols?" 
                        Manteniment Posarse_En_Forma Baixar_De_Pes Muscular Flexbilitat Equilibri Enfortir_Esquena))
    (bind ?objectiuMinutsDiaris (demanar_int "Quants minuts vols entrenar al dia?" 0 500))

    ;; abstraccio de l'edat
    (if (<= ?edat 12) then (bind ?edatAbs "infantil")
        else (if (<= ?edat 18) then (bind ?edatAbs "adolescent")
            else (if (<= ?edat 30) then (bind ?edatAbs "jove")
                else (if (<= ?edat 50) then (bind ?edatAbs "adult")
                    else (bind ?edatAbs "major")
                )
            )
        )
    )

    ;; abstraccio de l'IMC
    (if (<= ?valorIMC 18.5) then (bind ?imcAbs "baix")
        else (if (<= ?valorIMC 24.9) then (bind ?imcAbs "normal")
            else (if (<= ?valorIMC 29.9) then (bind ?imcAbs "sobrepes")
                else (bind ?imcAbs "obes")
            )
        )
    )

    ;; falta abstraccio de mes coses....

    (make-instance Persona of Usuari    (edat $?edatAbs)
                                        (Imc ?imcAbs))
)

;; ----------- FUNCIONS DESCARTAR -----------



;; ----------- FUNCIONS PROCESAR -----------



;; ----------- FUNCIONS MOSTRAR -----------

(deffunction MOSTRAR::printExercici (?exercici)
    (printout t "ID del exercici: " (instance-name ?exercici) crlf)
    (printout t "Que_Treballa: " (send ?exercici get-Que_Treballa) crlf)
)

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

   (system "timeout /t 1aa /nobreak")
   (printout t crlf)
   
   (focus RECOLLIR)
)

;; ---------------------------- MODUL RECOLLIR ----------------------------

(defrule RECOLLIR::creacioPersona
	(declare (salience 10))
	=> 
	(instanciacioPersona)
	(focus DESCARTAR)
)

;; ---------------------------- MODUL DESCARTAR ----------------------------

;; aqui definim defrules que tinguin en compte les limitacions i ens bloquejin els exercicis que no pot fer

;; aixo es del jeremy (per seguir el format)
;; (defrule DESCARTAR::limitacionsIMC
;;     (declare (salience 10))
;;     (object (is-a Antecedente) (ZonaCuerpo ?z1))
;;     ?inst <- (object (is-a Accion) (ZonaCuerpo ?z2) (Intensidad ?i))
;;     (test (and (eq ?z1 ?z2) (eq ?i Alta)))
;;     => (send ?inst delete)
;; )

(defrule DESCARTAR::canviProcesar
	(declare (salience -20))
	=>
	(focus PROCESAR)
)

;; ---------------------------- MODUL PROCESAR ----------------------------

;; mirar del jeremy com fa el apartat de "sintesis::"

(defrule PROCESAR::canviMostrar
	(declare (salience -20))
	=>
	(focus MOSTRAR)
)

;; ---------------------------- MODUL MOSTRAR ----------------------------

;; mirar del jeremy com fa el apartat de "output::"

(defrule MOSTRAR::print
   (declare (salience 10))
   =>
   (printout t "Exemple print de Exercici: " crlf)
   (printExercici [PressDeBanca])

   (printout t crlf)
   (printout t "Programa finalitzat" crlf)
)