;;; ---------------------------------------------------------
;;; .\onto.clips
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology .\onto.ttl
;;; :Date 15/05/2024 13:14:43

(defclass Exercici
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot IntensitatExercici
        (type STRING)
        (create-accessor read-write))
    (multislot Que_Treballa
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
    (multislot GrauLesió
        (type INTEGER)
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
    (multislot IntensitatPersona
        (type STRING)
        (create-accessor read-write))
    (multislot TempsDisponible
        (type INTEGER)
        (create-accessor read-write))
)

(definstances instances
)
