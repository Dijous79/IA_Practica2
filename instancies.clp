(definstances instances
  ([FlexionsDeBrasos] of Exercici
           (nomExercici "FlexionsDeBrasos")
           (Que_Treballa  "deltoidesAnterior" "estabilitzador" "pectoral" "triceps")
      )

  ([Dominades] of Exercici
           (nomExercici "Dominades")
           (Que_Treballa  "dorsals" "biceps" "trapecis" "estabilitzador")
      )

  ([ElevacionsLateralsAmbPes] of Exercici
           (nomExercici "ElevacionsLateralsAmbPes")
           (Que_Treballa  "deltoidesLateral" "trapecis" "trapecis")
      )

  ([FlexionsDeBícepsAmbPes] of Exercici
           (nomExercici "FlexionsDeBícepsAmbPes")
           (Que_Treballa  "biceps" "braços")
      )

  ([PressDeBanca] of Exercici
           (nomExercici "PressDeBanca")
           (Que_Treballa  "deltoidesAnterior" "pectoral" "triceps" "trapecis" "estabilitzador")
      )

  ([PressMilitar] of Exercici
           (nomExercici "PressMilitar")
           (Que_Treballa  "deltoides" "triceps" "trapecis")
      )

  ([HipThrusts] of Exercici
           (nomExercici "HipThrusts")
           (Que_Treballa  "gluteus" "isquiotibials" "quadriceps")
      )

  ([Squats] of Exercici
           (nomExercici "Squats")
           (Que_Treballa  "quadriceps" "gluteus" "isquiotibials" "trapecis" "estabilitzador")
      )

  ([Planchas] of Exercici
           (nomExercici "Planchas")
           (Que_Treballa  "abdominals" "lumbars" "trapecis" "estabilitzador")
      )

  ([Deadlifts] of Exercici
           (nomExercici "Deadlifts")
           (Que_Treballa  "espatllaPosterior" "dorsals" "gluteus" "isquiotibials" "trapecis" "estabilitzador")
      )

  ([Lunges] of Exercici
           (nomExercici "Lunges")
           (Que_Treballa  "quadriceps" "gluteus" "isquiotibials" "estabilitzador")
      )

  ([Burpees] of Exercici
           (nomExercici "Burpees")
           (Que_Treballa  "deltoidesAnterior" "pectoral" "triceps" "abdominals" "quadriceps" "isquiotibials" "gluteus" "estabilitzador")
      )

  ([MountainClimbers] of Exercici
           (nomExercici "MountainClimbers")
           (Que_Treballa  "abdominals" "quadriceps" "deltoides" "gluteus" "isquiotibials" "estabilitzador")
      )

  ([Correr] of Exercici
           (nomExercici "Correr")
           (Que_Treballa  "cardiovascular" "quadriceps" "isquiotibials" "gluteus" "calfs" "hombro" "caderes" "genolls" "tormells")
      )

  ([Nadar] of Exercici
           (nomExercici "Nadar")
           (Que_Treballa  "cardiovascular" "dorsals" "pectoral" "abdominals" "biceps" "triceps" "gluteus" "quadriceps" "isquiotibials")
      )

;; ------------------Limitacions------------------------------------

([Tendinitis_Manguito_Rotador] of Limitacions
         (Bloquejos  "deltoides" "hombro")
         (GrauLesio  "greu")
    )

([Fascitis_Plantar] of Limitacions
         (Bloquejos  "pie")
         (GrauLesio  "leve")
    )

([Espasmo_Muscular_Cervical] of Limitacions
         (Bloquejos  "cervicals")
         (GrauLesio  "moderado")
    )

([Síndrome_Túnel_Carpiano] of Limitacions
         (Bloquejos  "muñeca")
         (GrauLesio  "moderado")
    )

([Tendinitis_Codo_Tenista] of Limitacions
         (Bloquejos  "codo")
         (GrauLesio  "leve")
    )

([Tendinitis_Codo_Golfista] of Limitacions
         (Bloquejos  "codo")
         (GrauLesio  "leve")
    )

([Contractura_Muscular_Lumbar] of Limitacions
         (Bloquejos  "lumbars")
         (GrauLesio  "moderado")
    )

([Espolón_Calcáneo] of Limitacions
         (Bloquejos  "pie")
         (GrauLesio  "leve")
    )

([Ciática] of Limitacions
         (Bloquejos  "lumbars" "gluteus" "isquiotibials" "pierna")
         (GrauLesio  "moderado")
    )

([Esguince_Tobillo] of Limitacions
         (Bloquejos  "tobillo")
         (GrauLesio  "leve")
    )

([Hombro_Congelado] of Limitacions
         (Bloquejos  "hombro")
         (GrauLesio  "moderado")
    )

([Síndrome_Piramidal] of Limitacions
         (Bloquejos  "gluteus" "pierna")
         (GrauLesio  "moderado")
    )

([Bursitis_Rodilla] of Limitacions
         (Bloquejos  "rodilla")
         (GrauLesio  "moderado")
    )
)
