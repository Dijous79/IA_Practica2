;;; ---------------------------------------------------------
;;; .\onto.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology .\onto.ttl
;;; :Date 16/05/2024 00:07:20

(defclass Exercici
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Que_Treballa
        (type STRING)
        (create-accessor read-write))
)

(defclass ExercicisRutina
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
    (multislot IntensitatExercici
        (type STRING)
        (create-accessor read-write))
    (multislot TempsDedicat
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Limitacions
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Bloquejos
        (type STRING)
        (create-accessor read-write))
    (multislot GrauLesio
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Objectiu
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Que_Busca_Treballar
        (type STRING)
        (create-accessor read-write))
)

(defclass Usuari
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Duu_a_Terme
        (type INSTANCE)
        (create-accessor read-write))
    (multislot Te
        (type INSTANCE)
        (create-accessor read-write))
    (multislot Imc
        (type INTEGER)
        (create-accessor read-write))
    (multislot IntensitatPersona
        (type STRING)
        (create-accessor read-write))
    (multislot NivellFisic
        (type STRING)
        (create-accessor read-write))
    (multislot TempsDisponible
        (type INTEGER)
        (create-accessor read-write))
    (multislot edat
        (type INTEGER)
        (create-accessor read-write))
    (multislot pressioMax
        (type INTEGER)
        (create-accessor read-write))
    (multislot pressioMin
        (type INTEGER)
        (create-accessor read-write))
)
