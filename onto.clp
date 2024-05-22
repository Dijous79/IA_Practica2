;;; ---------------------------------------------------------
;;; .\onto.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology .\onto.ttl
;;; :Date 16/05/2024 13:35:22

(defclass Exercici
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nomExercici
        (type STRING)
        (create-accessor read-write))
    (multislot Que_Treballa
        (type STRING)
        (create-accessor read-write))
    (multislot Repeticions
        (type INTEGER)
        (create-accessor read-write))
    (multislot TempsDedicat
        (type STRING)
        (create-accessor read-write))
)

(defclass ExercicisRutina
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
    (slot nomExercici
        (type STRING)
        (create-accessor read-write))
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
    (slot nomLimitacio
        (type STRING)
        (create-accessor read-write))
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
    (slot nomObjectiu
        (type STRING)
        (create-accessor read-write))
    (multislot Que_Busca_Treballar
        (type STRING)
        (create-accessor read-write))
)

(defclass Usuari
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Duu_a_Terme
        (type STRING)
        (create-accessor read-write))
    (multislot TeLimitacions
        (type STRING)
        (create-accessor read-write))
    (multislot TeObjectius
        (type STRING)
        (create-accessor read-write))    
    (slot Imc
        (type INTEGER)
        (create-accessor read-write))
    (slot IntensitatPersona
        (type STRING)
        (create-accessor read-write))
    (slot NivellFisic
        (type STRING)
        (create-accessor read-write))
    (slot TempsDisponible
        (type INTEGER)
        (create-accessor read-write))
    (slot edat
        (type INTEGER)
        (create-accessor read-write))
    (slot presioSistoclica
        (type INTEGER)
        (create-accessor read-write))
    (slot presioDiastolica
        (type INTEGER)
        (create-accessor read-write))
    (slot minutsCaminatsDiaris
        (type INTEGER)
        (create-accessor read-write)) 
    (slot horesEsportSemanals
        (type INTEGER)
        (create-accessor read-write)) 
    (multislot tasquesDomestiques
        (type STRING)
        (create-accessor read-write))

)