(defmodule MAIN
    (export ?ALL)
)
;; Modul per extreure informacio del usuari
(defmodule entrada
    (import MAIN ?ALL)
    (export ?ALL)
)


(deffunction entrada::demanar_float(?pregunta ?min ?max)
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

(deffunction entrada::demanar_int(?pregunta ?min ?max)
    (printout t ?pregunta crlf)
    (bind ?res (read))
    (while (or (>= ?res ?max) (<= ?res ?min)) do
        (printout t crlf)
        (printout t "Valor no valid, siusplau prova-ho de nou:" crlf)
        (printout t ?pregunta crlf)
        (bind ?res (read))
    )
    (printout t crlf)
    (return ?res)
)

(deffunction entrada::demanar_opcions (?pregunta $?opcions)
    (printout t ?pregunta)
    (printout t " Respon amb una de les seguents opcions: " $?opcions crlf)
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

(defrule entrada::perfil_persona
    (declare (salience 10))
    =>
    (printout t "Siusplau respon a les següents preguntes" crlf)
    (bind ?edat (demanar_int "Quina edat tens?" 0 120))
    (bind ?estatura (demanar_float "En metres, quant mesures?" 0.0 3.0))
    (bind ?pes (demanar_float "En quilograms, quant peses?" 30.0 300.0))
    ;;IMC = index de massa corporal pes/estatura^2
    (bind ?IMC (/ ?pes (* ?estatura ?estatura)))
    (bind ?presioMax (demanar_int "En mmHg, quina és la teva pressiò sistòlica?" 0 250))
    (bind ?presioMax (demanar_int "En mmHg, quina és la teva pressiò diastòlica?" 0 200))
    (bind ?minutsCaminatsDiaris (demanar_int "Aproximadament, quants minuts camines al dia?" 0 500))
    (bind ?horesDesportSetmanals (demanar_int "Quantes hores d'esport fas a la setmana?" 0 40))
    (bind ?estatNormalEnLaFeina (demanar_opcions "En el teu lloc de treball o estudi com estas noramlment" Dret Segut))
    
)

(defrule MAIN::inici 
	(declare (salience 20)) 
	=> 
	(printout t "######" crlf)
	(printout t "#     #  #####     ##     ####    #####     #     ####     ##" crlf) 
	(printout t "#     #  #    #   #  #   #    #     #       #    #    #   #  #" crlf) 
	(printout t "######   #    #  #    #  #          #       #    #       #    #" crlf)
	(printout t "#        #####   ######  #          #       #    #       ######" crlf) 
	(printout t "#        #   #   #    #  #    #     #       #    #    #  #    #" crlf) 
	(printout t "#        #    #  #    #   ####      #       #     ####   #    #" crlf crlf)
    (focus entrada)
)

