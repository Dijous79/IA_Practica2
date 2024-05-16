;;; ---------------------------------------------------------
;;; .\onto.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology .\onto.ttl
;;; :Date 16/05/2024 10:41:51

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
    (slot IntensitatExercici
        (type STRING)
        (create-accessor read-write))
    (slot TempsDedicat
        (type STRING)
        (create-accessor read-write))
)

(defclass Limitacions
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Bloquejos
        (type STRING)
        (create-accessor read-write))
    (slot GrauLesio
        (type STRING)
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
    (slot Imc
        (type STRING)
        (create-accessor read-write))
    (slot IntensitatPersona
        (type STRING)
        (create-accessor read-write))
    (slot NivellFisic
        (type STRING)
        (create-accessor read-write))
    (slot TempsDisponible
        (type STRING)
        (create-accessor read-write))
    (slot edat
        (type STRING)
        (create-accessor read-write))
)
