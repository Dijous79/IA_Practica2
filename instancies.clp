(definstances instances
  ([FlexionsDeBrasos] of Exercici
           (nomExercici  FlexionsDeBrasos )
           (Que_Treballa   biceps   triceps   espatllaFrontal   deltoides   pectoral   estabilitzador )
      )

  ([Dominades] of Exercici
           (nomExercici  Dominades )
           (Que_Treballa   dorsals   biceps   trapesis   estabilitzador )
      )

  ([ElevacionsLateralsAmbPes] of Exercici
           (nomExercici  ElevacionsLateralsAmbPes )
           (Que_Treballa   deltoides   trapesis )
      )

  ([FlexionsDeBícepsAmbPes] of Exercici
           (nomExercici  FlexionsDeBícepsAmbPes )
           (Que_Treballa   biceps )
      )

  ([PressDeBanca] of Exercici
           (nomExercici  PressDeBanca )
           (Que_Treballa   deltoides   pectoral   triceps   trapesis   estabilitzador )
      )

  ([PressMilitar] of Exercici
           (nomExercici  PressMilitar )
           (Que_Treballa   deltoides   triceps   trapesis )
      )

  ([HipThrusts] of Exercici
           (nomExercici  HipThrusts )
           (Que_Treballa   glutis   quadriceps   isquiotibials )
      )

  ([Squats] of Exercici
           (nomExercici  Squats )
           (Que_Treballa   quadriceps   glutis   isquiotibials   trapesis   estabilitzador )
      )

  ([Planchas] of Exercici
           (nomExercici  Planchas )
           (Que_Treballa   abdominals   lumbars   trapesis   estabilitzador )
      )

  ([Deadlifts] of Exercici
           (nomExercici  Deadlifts )
           (Que_Treballa   dorsals   glutis   isquiotibials   trapesis   estabilitzador )
      )

  ([Lunges] of Exercici
           (nomExercici  Lunges )
           (Que_Treballa   quadriceps   glutis   isquiotibials   estabilitzador )
      )

  ([Burpees] of Exercici
           (nomExercici  Burpees )
           (Que_Treballa   deltoides   pectoral   triceps   quadriceps   isquiotibials   glutis   estabilitzador )
      )

  ([MountainClimbers] of Exercici
           (nomExercici  MountainClimbers )
           (Que_Treballa   abdominals   quadriceps   deltoides   glutis   isquiotibials   estabilitzador )
      )

  ([Correr] of Exercici
           (nomExercici  Correr )
           (Que_Treballa   cardio   quadriceps   isquiotibials   glutis   cadera   genolls   tormells   peus   cervicals )
      )

  ([Nadar] of Exercici
           (nomExercici  Nadar )
           (Que_Treballa   cardio   dorsals   pectoral   abdominals   biceps   triceps   glutis   quadriceps   isquiotibials )
      )

;; ------------------Limitacions------------------------------------

([Tendinitis_Manguito_Rotador] of Limitacions
         (nomLimitacio Tendinitis_Manguito_Rotador )
         (Bloquejos  deltoides hombro )
         (GrauLesio   invalid )
    )

([Fascitis_Plantar] of Limitacions
          (nomLimitacio  Fascitis_Plantar )
         (Bloquejos   peus )
         (GrauLesio   invalid )
    )

([Espasmo_Muscular_Cervical] of Limitacions
          (nomLimitacio  Espasmo_Muscular_Cervical )
         (Bloquejos   cervicals )
         (GrauLesio   invalid )
    )

([Síndrome_Túnel_Carpiano] of Limitacions
         (nomLimitacio  Síndrome_Túnel_Carpiano )
         (Bloquejos   canells )
         (GrauLesio   invalid )
    )

([Tendinitis_Codo] of Limitacions
           (nomLimitacio  Tendinitis_Codo )
         (Bloquejos   colzes )
         (GrauLesio   invalid )
    )

([Contractura_Muscular_Lumbar] of Limitacions
           (nomLimitacio  Contractura_Muscular_Lumbar )
         (Bloquejos   lumbars )
         (GrauLesio   invalid )
    )

([Espolón_Calcáneo] of Limitacions
               (nomLimitacio  Espolón_Calcáneo )
         (Bloquejos   peus )
         (GrauLesio   invalid )
    )

([Ciática] of Limitacions
           (nomLimitacio  Ciática )
         (Bloquejos   lumbars   glutis   isquiotibials   genolls   peus )
         (GrauLesio   invalid )
    )

([Esguince_Tobillo] of Limitacions
               (nomLimitacio  Esguince_Tobillo )
         (Bloquejos   tormells )
         (GrauLesio   invalid )
    )

([Hombro_Congelado] of Limitacions
           (nomLimitacio  Hombro_Congelado )
         (Bloquejos   hombro )
         (GrauLesio   invalid )
    )

([Síndrome_Piramidal] of Limitacions
         (nomLimitacio  Síndrome_Piramidal )
         (Bloquejos   glutis   peus )
         (GrauLesio   invalid )
    )

([Bursitis_Rodilla] of Limitacions
          (nomLimitacio  Bursitis_Rodilla )
         (Bloquejos   genolls )
         (GrauLesio   invalid )
    )

;; ------------------Objectius------------------------------------

([Millorar_la_força_del_tren_superior] of Objectiu
(Que_Busca_Treballar  biceps   triceps   espatlla_frontal   espatlla_posterior   trapesis   dorsals   pectoral )
)

([Tonificar_els_abdominals] of Objectiu
(Que_Busca_Treballar  abdominals   lumbars   estabilitzador )
)

([Desenvolupar_la_força_de_les_cames] of Objectiu
(Que_Busca_Treballar  quadriceps   isquiotibials   glutis )
)

([Millorar_la_flexibilitat_i_la_mobilitat] of Objectiu
(Que_Busca_Treballar  cervicals   cadera   genolls   tormells   quadriceps   isquiotibials   glutis )
)

([Augmentar_la_resistència_cardiovascular] of Objectiu
(Que_Busca_Treballar  cardio )
)

([Millorar_la_coordinació_i_l'equilibri] of Objectiu
(Que_Busca_Treballar  cervicals   tormells   quadriceps   isquiotibials   estabilitzador )
)

([Reduir_la_tensió_i_millorar_la_postura_de_l'esquena] of Objectiu
(Que_Busca_Treballar  dorsals   lumbars   trapesis   espatlla_posterior )
)

([Millorar_postura_coordinacio] of Objectiu
         (Que_Busca_Treballar   trapesis   espatlla_frontal   espatlla_posterior )
    )
)
