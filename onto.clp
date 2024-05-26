;;; ---------------------------------------------------------
;;; .\onto.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology .\onto.ttl
;;; :Date 16/05/2024 13:35:22

(defclass Exercici
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot NomExercici
        (type STRING)
        (create-accessor read-write))
    (multislot QueTreballa
        (type STRING)
        (create-accessor read-write))
    (multislot Repeticions
        (type INTEGER)
        (create-accessor read-write))
    (multislot TempsDedicat
        (type STRING)
        (create-accessor read-write))
    (slot Classe
        (type STRING)
        (create-accessor read-write)
    )
    (multislot Calories
        (type INTEGER)
        (create-accessor read-write))
    (multislot Contraindicacions
        (type STRING)
        (create-accessor read-write))
    (multislot Indicacions
        (type STRING)
        (create-accessor read-write))
)

(defclass Limitacions
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot NomLimitacio
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
    (slot NomObjectiu
        (type STRING)
        (create-accessor read-write))
    (multislot PartsDelCosObjectiu
        (type STRING)
        (create-accessor read-write))
    (multislot ClassesObjectiu
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
    (slot Edat
        (type INTEGER)
        (create-accessor read-write))
    (slot PresioSistolica
        (type INTEGER)
        (create-accessor read-write))
    (slot PresioDiastolica
        (type INTEGER)
        (create-accessor read-write))
    (slot MinutsCaminatsDiaris
        (type INTEGER)
        (create-accessor read-write)) 
    (slot HoresEsportSemanals
        (type INTEGER)
        (create-accessor read-write)) 
    (multislot Tasques
        (type INTEGER)
        (create-accessor read-write))
    (multislot ClassesTreballades
        (type STRING)
        (create-accessor read-write))
    (slot MenjarsAmbProteina
        (type INTEGER)
        (create-accessor read-write))
    (slot MenjarsAmbCarbohidrats
        (type INTEGER)
        (create-accessor read-write))

)