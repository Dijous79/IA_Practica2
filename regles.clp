;; VARIABLES GLOBALS

(defglobal ?*exercicis* = (create$ ""))
(defglobal ?*exercicis_extra* = (create$ ""))
(defglobal ?*parts_del_cos_no_treballables* = (create$))
(defglobal ?*classes_prioritaries* = (create$))
(defglobal ?*parts_del_cos_prioritaries* = (create$))
;                                               card  forsa res   expl  flex  equilibri
(defglobal ?*intensitats_per_classe* = (create$ baixa baixa baixa baixa baixa baixa))
(defglobal ?*marc_de_caracteristiques* = (create$))

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

(deffunction MAIN::convertir_classe_a_index(?classe)
    (switch ?classe
        (case cardio       then (return 1))
        (case forsa        then (return 2))
        (case resistencia then (return 3))
        (case explosivitat then (return 4))
        (case flexivilitat then (return 5))
        (case equilibri    then (return 6))
    )
)

(deffunction MAIN::convertir_intensitat_a_int(?intensitat)
    (switch ?intensitat
        (case baixa then (return 1))
        (case mitja then (return 2))
        (case alta  then (return 3))
    )
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
    (printout t "####### #             #       #                     ####                                         " crlf)
	(printout t "   #   # #     #      # #     #    ####   #####    #    #    ####     #    #   ####   #    #     " crlf) 
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

    ;;(bind ?edat (demanar_int "Quina edat tens?" 0 120))
    (bind ?edat 21)
    
    (send ?usuari put-Edat ?edat)

    ;;(bind ?estatura (demanar_float "En metres, quant mesures?" 0.0 3.0))
    ;;(bind ?pes (demanar_float "En quilograms, quant peses?" 30.0 300.0))
    
    ;;IMC = index de massa corporal pes/estatura^2
    ;(bind ?valorIMC (/ ?pes (* ?estatura ?estatura)))
    (bind ?valorIMC 24.0)
    (send ?usuari put-Imc ?valorIMC)
    ;(bind ?presioMax (demanar_int "En mmHg, quina és la teva pressiò sistòlica?" 10 180))
    ;(bind ?presioMin (demanar_int "En mmHg, quina és la teva pressiò diastòlica?" 0 ?presioMax))
    (bind ?presioMax 100)
    (bind ?presioMin 90)
    
    (send ?usuari put-PresioSistolica ?presioMax)
    (send ?usuari put-PresioDiastolica ?presioMin)
    
    ;;(bind ?estatDeForma (demanar_opcions "Com et descriuries en termes de forma fisica?" Alta Mitja Baixa))
    ;;(send ?usuari put-EstatDeForma ?estatDeForma)

    (bind ?horesEsportSemanals (demanar_int "Quantes hores d'esport fas a la setmana?" 0 100))
    (send ?usuari put-HoresEsportSemanals ?horesEsportSemanals)

    (if (<= ?horesEsportSemanals 2) then
        (printout t "En el teu dia a dia..." crlf)
        (bind ?minutsCaminatsDiaris 0)    
        (bind ?res (demanar_boolea "Tens mascota a la que passejes?"))
        (if ?res then
            (bind ?minutsCaminatsDiaris (+ ?minutsCaminatsDiaris (demanar_int "Quants minuts camines al dia amb la teva mascota?" 0 1440)))
        )
        
        (bind ?res (demanar_boolea "Camines per anar a treballar?"))
        (if ?res then
            (bind ?minutsCaminatsDiaris (+ ?minutsCaminatsDiaris (demanar_int "Quants minuts camines al dia per anar a treballar?" 0 1440)))
        )

        (bind ?res (demanar_boolea "Vas fer la compra?"))
        (if ?res then
            (bind ?minutsCaminatsDiaris (+ ?minutsCaminatsDiaris (/ (demanar_int "Quants minuts camines per fer la compra? (afageix anada i tornada si la fas caminant)" 0 1440) 5 )))
        )

        (bind ?res (demanar_boolea "Treballes de peu?"))
        (if ?res then
            (bind ?minutsCaminatsDiaris (+ ?minutsCaminatsDiaris 180))
        )

        (send ?usuari put-MinutsCaminatsDiaris ?minutsCaminatsDiaris)
        
        (bind ?res (demanar_boolea "T'encarregues d'algunes de les tasques de la casa?"))
        (if ?res then
            (bind ?tasquesDomestiques (demanar_multiples_respostes "D'entre aquestes quines tasques de la casa fas de forma recorrent?" Planxar Escombrar Aspirar Fregar_el_terra Estendre_la_roba Cuinar Rentar_plats Fregar_lavabos))
            (send ?usuari put-TasquesDomestiques ?tasquesDomestiques)
            (assert (abstreure_tasques_domestiques))
        )
    else
        (bind ?opcionsClasse (create$ cardio forsa resistencia explosivitat flexibilitat equilibri))
        (bind ?classesTreballades (demanar_multiples_respostes "En el teu esport que treballes d'entre les seguents opcions?" ?opcionsClasse))
    )
    

    (printout t "Sobre la teva dieta..." crlf)
    (bind ?menjarsAmbProteina 0)
    (bind ?res (demanar_boolea "Ets vega/na?"))
    (if (not ?res) then
        (bind ?res (demanar_boolea "Ets vegetaria/na?"))
        (if (not ?res) then
            (bind ?menjarsAmbProteina (+ ?menjarsAmbProteina (* (demanar_int "Quants cops menjes carn a la setmana?" 0 20) 2)))
        )
        (bind ?menjarsAmbProteina (+ ?menjarsAmbProteina (* (demanar_int "Quants cops menjes ou a la setmana?" 0 20) 2)))
        (bind ?menjarsAmbProteina (+ ?menjarsAmbProteina (demanar_int "Quants cops menjes peix a la setmana?" 0 20)))
    )
    (bind ?menjarsAmbProteina (+ ?menjarsAmbProteina (demanar_int "Quants cops menjes fruits secs a la setmana?" 0 20)))
    
    (send ?usuari put-MenjarsAmbProteina ?menjarsAmbProteina)

    (bind ?menjarsAmbCarbohidrats)
    (bind ?menjarsAmbCarbohidrats (+ ?menjarsAmbCarbohidrats (demanar_int "Quants cops menjes pasta i/o arros a la setmana?" 0 20)))
    (bind ?menjarsAmbCarbohidrats (+ ?menjarsAmbCarbohidrats (demanar_int "Quants cops menjes pa i/o pastes a la setmana?" 0)))
    (send ?usuari put-MenjarsAmbCarbohidrats ?menjarsAmbCarbohidrats)


    (bind ?objectiuMinutsDiaris (demanar_int "Quants minuts al dia vols dedicar a fer exercici? (Indica un multiple de 10)" 0 1440))
    (send ?usuari put-TempsDisponible ?objectiuMinutsDiaris)

	(bind ?teLimitacions (demanar_boolea "Tens alguna patologia o limitacio?"))
    (if ?teLimitacions then
        (bind ?instancies (find-all-instances ((?inst Limitacions)) TRUE))
        (bind ?limitacions_posibles (create$))
        (foreach ?i ?instancies
            (bind ?nom (send ?i get-NomLimitacio))
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
        (bind ?nom (send ?i get-NomObjectiu))
        (bind ?objectius_posibles (create$ ?objectius_posibles ?nom))        
    )
    (bind ?res (demanar_multiples_respostes "Digues quines d'entre les seguents opcions:" ?objectius_posibles))
    
    (send ?usuari put-TeObjectius ?res)
    (assert (abstreure_objectius))
    

    
	(focus ABSTREURE)
)

;; ---------------------------- MODUL ABSTREURE ----------------------------

(defrule ABSTREURE::inicializar ""
    (declare (salience 10))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?*exercicis* (find-all-instances ((?inst Exercici)) TRUE))
)

(defrule ABSTREURE::abstraccio_objectius ""
    (declare (salience 9))
    ?fet <- (abstreure_objectius)
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?objectius (send ?usuari get-TeObjectius))
    (bind ?aux (create$))

    
    (bind ?instancies (find-all-instances ((?inst Objectiu)) (member$ ?inst:NomObjectiu ?objectius)))
    (foreach ?i ?instancies
        (bind ?partsDelCosObjectiu (send ?i get-PartsDelCosObjectiu))
        (bind ?j 1)
        (while (<= ?j (length$ ?partsDelCosObjectiu)) do
            (bind ?busca_nth (nth$ ?j ?partsDelCosObjectiu))
            (if(not(member$ ?busca_nth ?*parts_del_cos_prioritaries*))
                then(bind ?*parts_del_cos_prioritaries* (create$ ?*parts_del_cos_prioritaries* ?busca_nth))
            )
            (bind ?j (+ ?j 1))
        )
        (bind ?classesObjectiu (send ?i get-ClassesObjectiu))
        (bind ?j 1)
        (while (<= ?j (length$ ?classesObjectiu)) do
            (bind ?busca_nth (nth$ ?j ?classesObjectiu))
            (if(not(member$ ?busca_nth ?*classes_prioritaries*))
                then(bind ?*classes_prioritaries* (create$ ?*classes_prioritaries* ?busca_nth))
            )
            (bind ?j (+ ?j 1))
        )
    )
    
    (retract ?fet)

)

(defrule ABSTREURE::abstraccio_edat ""
    (declare (salience 8))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?edat (send ?usuari get-Edat))
    (if (<= ?edat 11) then
        (bind ?*intensitats_per_classe* (create$ baixa baixa baixa baixa baixa baixa))
        (bind ?*marc_de_caracteristiques* (create$ ?*marc_de_caracteristiques* infant))
    else
        (if (<= ?edat 17) then
            (bind ?*intensitats_per_classe* (create$ mitja mitja mitja mitja mitja mitja))
        else
            (if (<= ?edat 30) then
                (bind ?*intensitats_per_classe* (create$ alta alta alta alta alta alta))
            else
                (if (<= ?edat 55) then
                    (bind ?*intensitats_per_classe* (create$ mitja mitja mitja mitja mitja mitja))
                else
                    (bind ?*intensitats_per_classe* (create$ baixa baixa baixa baixa baixa baixa))
                    (bind ?*marc_de_caracteristiques* (create$ ?*marc_de_caracteristiques* avi))

                )
            )
        )
    )
)

(defrule ABSTREURE::abstraccio_activitat ""
    (declare (salience 7))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?classesTreballades (send ?usuari get-ClassesTreballades))
    (bind ?hores (send ?usuari get-HoresEsportSemanals))
    (if (> ?hores 5 ) then
        (progn$ (?var ?classesTreballades)
            (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* (convertir_classe_a_index ?var) (convertir_classe_a_index ?var) alta))
        )
        (bind ?aux (create$))
        (progn$ (?var ?*classes_prioritaries*)
            (if (not(member$ ?var ?classesTreballades)) then
                (bind ?aux (create$ ?aux ?var))
            )
        )
        (bind ?*classes_prioritaries* ?aux)
        else
        (if (and (<= ?hores 5) (>= ?hores 3)) then
            (progn$ (?var ?classesTreballades)
                (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* (convertir_classe_a_index ?var) (convertir_classe_a_index ?var) mitja))
            )
            (progn$ (?var ?*classes_prioritaries*)
                (if (not(member$ ?var ?classesTreballades)) then
                    (bind ?aux (create$ ?aux ?var))
                )
            )
            (bind ?*classes_prioritaries* ?aux)
        else 
            (bind ?minuts (send ?usuari get-MinutsCaminatsDiaris))
            (if (and (>= ?minuts 180) (eq (nth$ 1 ?*intensitats_per_classe*) baixa))then
                (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 1 1 mitja))
            else
                (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 1 1 baixa))
            )
        )
    )
)


(defrule ABSTREURE::abstraccio_apats "si l'usuari segueix una dieta hiperproteica, augmentem la intensitat dels exercicis de força"
    (declare (salience 6))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?menjarsAmbProteina (send ?usuari get-MenjarsAmbProteina))
    (if (>= ?menjarsAmbProteina 10) then
        (if (eq (nth$ 2 ?*intensitats_per_classe*) baixa) then
            (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 2 2 mitja))
        else
            (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 2 2 alta))
        )
        (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 2 2 alta))
    )

    (bind ?menjarsAmbCarbohidrats (send ?usuari get-MenjarsAmbCarbohidrats))
    (if (>= ?menjarsAmbCarbohidrats 10) then
        (if (eq (nth$ 3 ?*intensitats_per_classe*) baixa) then
            (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 1 1 mitja))
        else
            (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 1 1 alta))
        )
        (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* 1 1 alta))
    )
)



(defrule ABSTREURE::abstraccio_imc ""
    (declare (salience 5))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?imc (send ?usuari get-Imc))
    (if (> ?imc 29.9) then
        (bind ?*intensitats_per_classe* (create$ baixa baixa baixa baixa baixa baixa))
        (bind ?*marc_de_caracteristiques* (create$ ?*marc_de_caracteristiques* obesitat))
    else
        (if (or (< ?imc 18.5) (> ?imc 24.9)) then
            (bind ?i 1)
            (while (<= ?i (length$ ?*intensitats_per_classe*)) do
                (bind ?intensitat_nth (nth$ ?i ?*intensitats_per_classe*))
                (if (eq ?intensitat_nth alta)
                    then (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* ?i ?i mitja))
                )
                (bind ?i (+ ?i 1))
            )
            (if (> ?imc 24.9) then
                (bind ?*marc_de_caracteristiques* (create$ ?*marc_de_caracteristiques* sobrepes))
            )
        )
    )
)

(defrule ABSTREURE::abstraccio_pressio ""
    (declare (salience 1))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?presioSanguinea (send ?usuari get-PresioSistolica))
    (bind ?presioSanguinea2 (send ?usuari get-PresioDiastolica))
    (if (and (<= ?presioSanguinea 90) (<= ?presioSanguinea2 60)) ;baixa
        then 
            (bind ?*classes_prioritaries* (create$ ?*classes_prioritaries* cardio))
            (bind ?i 1)
            (progn$ (?var ?*intensitats_per_classe*)
                (if (eq ?var alta) then
                    (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* ?i ?i mitja))
                )
                (bind ?i (+ ?i 1))
            )
            (bind ?*marc_de_caracteristiques* (create$ ?*marc_de_caracteristiques* hipotensio))
    else
        (if (and (<= ?presioSanguinea 120) (<= ?presioSanguinea2 80)) then ;normal
            
        else
            (if (and (<= ?presioSanguinea 129) (<= ?presioSanguinea2 80)) then ;alta
                (bind ?i 1)
                (progn$ (?var ?*intensitats_per_classe*)
                    (if (eq ?var alta)
                        then
                        (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* ?i ?i mitja))
                    )
                    (bind ?i (+ ?i 1))
                )
            else
                (if (and (<= ?presioSanguinea 139) (<= ?presioSanguinea2 89)) then ;hipertensio1 o hipertensio2
                    (bind ?i 1)
                    (progn$ (?var ?*intensitats_per_classe*)
                        (if (or (eq ?var alta) (eq ?var mitja )) then
                            (bind ?*intensitats_per_classe* (replace$ ?*intensitats_per_classe* ?i ?i baixa))
                        )
                        (bind ?i (+ ?i 1))
                    )
                    (bind ?*marc_de_caracteristiques* (create$ ?*marc_de_caracteristiques* hipertensio))
                )
            (bind ?*classes_prioritaries* (create$ ?*classes_prioritaries* cardio))
            )
        )
    )
)

(defrule ABSTREURE::abstraccio_parts_no_treballables ""
    (declare (salience 0))
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
    (declare (salience 10))
    ?fet <- (filtra_patologies)
    ?usuari <- (object(is-a Usuari))
    =>

    (bind ?i 1)
    (bind ?aux (create$))

    (while (<= ?i (length$ ?*exercicis*)) do
        (bind ?exercici_nth (nth$ ?i ?*exercicis*))
        (bind ?queTreball (send ?exercici_nth get-QueTreballa))
        (bind ?inidcacions (send ?exercici_nth get-Indicacions))
        (if (or (not(tenen_element_en_comu ?*parts_del_cos_no_treballables* ?queTreball) (tenen_element_en_comu$ ?indicacions ?*marc_de_caracteristiques*)))
            then (bind ?aux (create$ ?aux ?exercici_nth)))
        (bind ?i (+ ?i 1))
    )   

    (bind ?*exercicis* ?aux)
    

    (retract ?fet)
)

(defrule LIMITAR::exercicis_contraindicats ""
    (declare (salience 10))
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?i 1)
    (bind ?aux (create$))

    (while (<= ?i (length$ ?*exercicis*)) do
        (bind ?exercici_nth (nth$ ?i ?*exercicis*))
        (bind ?contraindicacions (send ?exercici_nth get-Contraindicacions))
        (if (not(tenen_element_en_comu ?*marc_de_caracteristiques* ?contraindicacions))
            then (bind ?aux (create$ ?aux ?exercici_nth))
        )
        (bind ?i (+ ?i 1))
    )   

    (bind ?*exercicis* ?aux)
) 

(defrule LIMITAR::exercicis_sobre_objectiu "" 
    ?usuari <- (object(is-a Usuari))
    =>

    (bind ?i 1)
    (bind ?aux (create$))
    (bind ?aux2 (create$))
    (if (and (> (length$ ?*parts_del_cos_prioritaries*) 0) (> (length$ ?*classes_prioritaries*) 0))
    then
        (while (<= ?i (length$ ?*exercicis*)) do
            (bind ?exercici_nth (nth$ ?i ?*exercicis*))
            (bind ?queTreballa (send ?exercici_nth get-QueTreballa))
            (bind ?classe (send ?exercici_nth get-Classe))
            (if (and (tenen_element_en_comu ?*parts_del_cos_prioritaries* ?queTreballa) (member$ ?classe ?*classes_prioritaries*))
                then (bind ?aux (create$ ?aux ?exercici_nth))
            else
                (bind ?aux2 (create$ ?aux2 ?exercici_nth))
            )
            (bind ?i (+ ?i 1))
        )   
    else
        (if (> (length$ ?*parts_del_cos_prioritaries*) 0)
            then
            (while (<= ?i (length$ ?*exercicis*)) do
                (bind ?exercici_nth (nth$ ?i ?*exercicis*))
                (bind ?queTreballa (send ?exercici_nth get-QueTreballa))
                (if (tenen_element_en_comu ?*parts_del_cos_prioritaries* ?queTreballa)
                    then (bind ?aux (create$ ?aux ?exercici_nth))
                else
                    (bind ?aux2 (create$ ?aux2 ?exercici_nth))
                )
                (bind ?i (+ ?i 1))
            )   

        else
            (if (> (length$ ?*classes_prioritaries*) 0)
                then
                (while (<= ?i (length$ ?*exercicis*)) do
                    (bind ?exercici_nth (nth$ ?i ?*exercicis*))
                    (bind ?classe (send ?exercici_nth get-Classe))
                    (if (member$ ?classe ?*classes_prioritaries*)
                        then (bind ?aux (create$ ?aux ?exercici_nth))
                    else
                        (bind ?aux2 (create$ ?aux2 ?exercici_nth))
                    )
                    (bind ?i (+ ?i 1))
                )   

            )
        )
    )
    
    (bind ?*exercicis* ?aux)
    (bind ?*exercicis_extra* ?aux2)    
)

(defrule LIMITAR::exercicis_innecessaris ""
    ?usuari <- (object(is-a Usuari))
    =>
    (bind ?i 1)
    (bind ?aux (create$))
    (while (<= ?i (length$ ?*exercicis*)) do
        (bind ?exercici_nth (nth$ ?num ?*exercicis*))
        (bind ?intensitat (convertir_intensitat_a_int (nth$ (convertir_classe_a_index (send ?exercici_nth get-Classe)) ?*intensitats_per_classe*)))
        (bind ?temps (nth$ ?intensitat (send ?exercici_nth get-TempsDedicat)))
        (if (> ?temps 0)
            then (bind ?aux (create$ ?aux ?exercici_nth))
        )
        (bind ?i (+ ?i 1))
    )   

    (bind ?*exercicis* ?aux)
    
    (bind ?i 1)
    (bind ?aux (create$))
    (while (<= ?i (length$ ?*exercicis_extra*)) do
        (bind ?exercici_nth (nth$ ?num ?*exercicis_extra*))
        (bind ?intensitat (convertir_intensitat_a_int (nth$ (convertir_classe_a_index (send ?exercici_nth get-Classe)) ?*intensitats_per_classe*)))
        (bind ?temps (nth$ ?intensitat (send ?exercici_nth get-TempsDedicat)))
        (if (> ?temps 0)
            then (bind ?aux (create$ ?aux ?exercici_nth))
        )
        (bind ?i (+ ?i 1))
    )

    (bind ?*exercicis_extra* ?aux)
)

(defrule LIMITAR::canviProcesar
	(declare (salience -20))
	=>
	(focus PROCESAR)
)

;; ---------------------------- MODUL PROCESAR ----------------------------


(deffunction PROCESAR::printExercici (?exercici ?intensitat)
    (printout t "ID del exercici: " (send ?exercici get-NomExercici) crlf)
    (printout t "Repeticions: " (nth$ ?intensitat (send ?exercici get-Repeticions)) crlf)
    (printout t "Temps: " (nth$ ?intensitat (send ?exercici get-TempsDedicat)) crlf)
)

(defrule PROCESAR::fer_rutina ""
    ?usuari <- (object(is-a Usuari))
    ;?fact <- (nombre ?value)
    ;?minuts <- (objectiuMinutsDiaris ?value)
    =>
    (bind ?minuts (send ?usuari get-TempsDisponible))
    (bind ?minutsOcupats 0)

    (bind ?punter 1)
    (bind ?punterAux 1)
    (bind ?j 1)
    (bind ?diesDeLaSetmana (create$ Dilluns Dimarts Dimecres Dijous Divendres Dissabte Diumenge))

    (while (<= ?j (length$ ?diesDeLaSetmana)) do
        
        

        (bind ?llistaExercicis (create$))
        (bind ?llistaIntensitats (create$))

        (printout t crlf "Aqui tens els teus exercicis per la rutina:" crlf)

        (printout t (nth$ ?j ?diesDeLaSetmana) ":" crlf crlf)
        (bind ?i 1)
        (while (and (< ?minutsOcupats ?minuts) (<= ?i (length$ ?*exercicis*))) do
            (bind ?j (+ ?i ?punter))
            (bind ?num (mod ?j (+ (length$ ?*exercicis*) 1)))
            (if (eq ?num 0) then
                (bind ?num 1)
                (bind ?punter (+ ?punter 1))
            )
            (bind ?exercici_nth (nth$ ?num ?*exercicis*))
            (bind ?intensitat (convertir_intensitat_a_int (nth$ (convertir_classe_a_index (send ?exercici_nth get-Classe)) ?*intensitats_per_classe*)))
            (bind ?temps (nth$ ?intensitat (send ?exercici_nth get-TempsDedicat)))

            (if (<= (+ ?minutsOcupats ?temps) ?minuts) then
                (bind ?minutsOcupats (+ ?minutsOcupats ?temps))
                (bind ?llistaExercicis (create$ ?llistaExercicis ?exercici_nth))
                (bind ?llistaIntensitats (create$ ?llistaIntensitats ?intensitat))
            )
            (bind ?i (+ ?i 1))
        )


        (bind ?i 1)
        (while (and (< ?minutsOcupats ?minuts) (<= ?i (length$ ?*exercicis_extra*))) do
            (bind ?j (+ ?i ?punterAux))
            (bind ?num (mod ?j (+ (length$ ?*exercicis_extra*) 1)))
            (if (eq ?num 0) then
                (bind ?num 1)
                (bind ?punterAux (+ ?punterAux 1))
            )
            (bind ?exercici_nth (nth$ ?num ?*exercicis_extra*))
            (bind ?intensitat (convertir_intensitat_a_int (nth$ (convertir_classe_a_index (send ?exercici_nth get-Classe)) ?*intensitats_per_classe*)))
            (bind ?temps (nth$ ?intensitat (send ?exercici_nth get-TempsDedicat)))

            (if (<= (+ ?minutsOcupats ?temps) ?minuts) then
                (bind ?minutsOcupats (+ ?minutsOcupats ?temps))
                (bind ?llistaExercicis (create$ ?llistaExercicis ?exercici_nth))
                (bind ?llistaIntensitats (create$ ?llistaIntensitats ?intensitat))
            )
            (bind ?i (+ ?i 1))
        )
        
        
        (printout t (implode$ ?llistaExercicis) crlf crlf)
        
        (bind ?i 1)

        (while (<= ?i (length$ ?llistaExercicis)) do
            (bind ?exercici_nth (nth$ ?i ?llistaExercicis))
            (bind ?intensitat_nth (nth$ ?i ?llistaIntensitats))
            (printExercici ?exercici_nth ?intensitat_nth)
            (bind ?i (+ ?i 1))
        )

        (bind ?j (+ ?j 1))
    )
    (printout t "Programa finalitzat" crlf)
)
