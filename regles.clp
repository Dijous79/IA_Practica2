;; VARIABLES GLOBALS

;; MODULS
(defmodule MAIN (export ?ALL))

;; Modul per extreure informacio del usuari (Problema Concret)
(defmodule RECOLLIR_DADES
   (import MAIN ?ALL)
   (export ?ALL)
)

;; Problema abstracte
(defmodule ABSTREURE_DADES
   (import MAIN ?ALL)
   (import RECOLLIR_DADES ?ALL)
   (export ?ALL)
)

;; Genera la rutina
(defmodule PROCESAR_DADES
   (import MAIN ?ALL)
   (import RECOLLIR_DADES ?ALL)
   (import ABSTREURE_DADES ?ALL)
   (export ?ALL)
)

;; Mostra la rutina
(defmodule MOSTRAR_DADES
   (import MAIN ?ALL)
   (import RECOLLIR_DADES ?ALL)
   (import ABSTREURE_DADES ?ALL)
   (import PROCESAR_DADES ?ALL)
   (export ?ALL)
)

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
   
   (focus RECOLLIR_DADES)
)

;; --------------------- MODULO RECOLLIR_DADES ---------------------

;; --------- SALUT ---------


(defrule RECOLLIR_DADES::preguntesSalut
    (declare (salience 30))
   ?usuari <- (object (is-a Usuari))
   =>
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

    ;; Ahora haces los asserts
    (assert (edat ?edat))
    (assert (estatura ?estatura))
    (assert (pes ?pes))
    (assert (IMC ?valorIMC))
    (assert (presioMax ?presioMax))
    (assert (presioMix ?presioMix))
    (assert (minutsCaminatsDiaris ?minutsCaminatsDiaris))
    (assert (horesDesportSetmanals ?horesDesportSetmanals))
    (assert (estatNormalEnLaFeina ?estatNormalEnLaFeina))
)

;; --------- DIETA ---------

(defrule RECOLLIR_DADES::preguntesDieta
   (declare (salience 20))
   ?usuari <- (object (is-a Usuari))
   =>
    (printout t "Siusplau respon a les següents preguntes sobre la teva dieta" crlf)
    (bind ?apatsDiaris (demanar_int "Quants apats fas al dia?" 1 6))
    (bind ?pica (demanar_opcions "Piques entre hores?" Si No))
    (bind ?pecesFruita (demanar_opcions "Quantes peçes de fruita menjes al dia?" 0-1 2-3 4+))
    (bind ?peixSetmanal (demanar_opcions "Quantes vegades menjes peix a la setmana?" 0-1 2-3 4+))
    (bind ?fregitSetmanal (demanar_opcions "Quantes vegades menjes fregits a la setmana?" 0-1 2-3 4+))
    (bind ?carnSetmanal (demanar_opcions "Quantes vegades menjes carn a la setmana?" 0-2 3-5 6+))
    (bind ?sal (demanar_opcions "Com valores el teu consum de sal?" Baix Mig Alt))

    ;; Ahora haces los asserts
    (assert (apatsDiaris ?apatsDiaris))
    (assert (pica ?pica))
    (assert (pecesFruita ?pecesFruita))
    (assert (peixSetmanal ?peixSetmanal))
    (assert (fregitSetmanal ?fregitSetmanal))
    (assert (carnSetmanal ?carnSetmanal))
    (assert (sal ?sal))
)

;; --------- OBJECTIUS ---------

(defrule RECOLLIR_DADES::preguntesObjectius
    (declare (salience 10))
    ?usuari <- (object (is-a Usuari))
    =>
    (printout t "Siusplau respon a les següents preguntes sobre els teus objectius" crlf)
    (bind ?tipusPrograma (demanar_opcions "Quin tipus de programa vols?" 
                        Manteniment Posarse_En_Forma Baixar_De_Pes Muscular Flexbilitat Equilibri Enfortir_Esquena))
    (bind ?objectiuMinutsDiaris (demanar_int "Quants minuts vols entrenar al dia?" 0 500))

    ;; Ahora haces los asserts
    (assert (tipusPrograma ?tipusPrograma))
    (assert (objectiuMinutsDiaris ?objectiuMinutsDiaris))
)

