([Flexions_De_Bracos] of Exercici
           (nomExercici  FlexionsDeBrasos )
           (Que_Treballa   colzes biceps   triceps   espatllaFrontal   deltoides   pectoral   estabilitzador )
           (Tipus forsa)
           (repeticions  5 10 20)
           (temps 3 7 10)
)

([Dominades] of Exercici
           (nomExercici  Dominades )
           (Que_Treballa   dorsals   biceps   trapesis   estabilitzador hombro)
           (Tipus forsa)
           (repeticions 5 10 15)
           (temps 3 7 10)
)

([Elevacions_Laterals_Amb_Pes] of Exercici
           (nomExercici  ElevacionsLateralsAmbPes )
           (Que_Treballa   deltoides   trapesis )
           (Tipus forsa)
           (repeticions  8 12 20)
           (temps 5 8 12)
)

([Flexions_De_Biceps_Amb_Pes] of Exercici
           (nomExercici  FlexionsDeBicepsAmbPes )
           (Que_Treballa   biceps colzes )
           (Tipus forsa)
           (repeticions  10 15 20)
           (temps 5 10 15)
)

([Press_De_Banca] of Exercici
           (nomExercici  PressDeBanca )
           (Que_Treballa   deltoides   pectoral   triceps   trapesis   estabilitzador )
           (Tipus forsa)
           (repeticions  8 12 15)
           (temps 5 10 15)
)

([Press_Militar] of Exercici
           (nomExercici  PressMilitar )
           (Que_Treballa   deltoides   triceps   trapesis )
           (Tipus forsa)
           (repeticions  5 10 15)
           (temps 5 10 15)
)

([Hip_Thrusts] of Exercici
           (nomExercici  HipThrusts )
           (Que_Treballa   glutis   quadriceps   isquiotibials )
           (Tipus forsa)
           (repeticions  10 15 20)
           (temps 5 10 15)
)

([Squats] of Exercici
           (nomExercici  Squats )
           (Que_Treballa   quadriceps   glutis   isquiotibials   trapesis   estabilitzador )
           (Tipus forsa)
           (repeticions  10 15 20)
           (temps 8 12 16)
)

([Planchas] of Exercici
           (nomExercici  Planchas )
           (Que_Treballa   colzes abdominals   lumbars   trapesis   estabilitzador )
           (Tipus resistencia)
           (repeticions  1 1 1)
           (temps 3 5 10)
)

([Deadlifts] of Exercici
           (nomExercici  Deadlifts )
           (Que_Treballa   dorsals   glutis   isquiotibials   trapesis   estabilitzador )
           (Tipus forsa)
           (repeticions  8 12 15)
           (temps 5 10 15)
)

([Lunges] of Exercici
           (nomExercici  Lunges )
           (Que_Treballa   quadriceps   glutis   isquiotibials   estabilitzador )
           (Tipus forsa)
           (repeticions  8 12 15)
           (temps 5 10 15)
)

([Burpees] of Exercici
           (nomExercici  Burpees )
           (Que_Treballa   colzes deltoides   pectoral   triceps   quadriceps   isquiotibials   glutis   estabilitzador )
           (Tipus explosivitat)
           (repeticions  5 10 15)
           (temps 4 8 12)
)

([Mountain_Climbers] of Exercici
           (nomExercici  MountainClimbers )
           (Que_Treballa   abdominals   quadriceps   deltoides   glutis   isquiotibials   estabilitzador )
           (Tipus resistencia)
           (repeticions  10 20 30)
           (temps 3 5 7)
)

;;------------------------Cardio-----------------------------------
([Correr_En_Maquina] of Exercici
           (nomExercici  Correr )
           (Que_Treballa   cardio   quadriceps   isquiotibials   glutis   cadera   genolls   tormells   peus   cervicals )
           (Tipus cardio)
           (repeticions  1 1 1)
           (temps 20 30 40)
)

([Lateral_Toe_Tabs] of Exercici
           (nomExercici  Lateral_Toe_Tabs )
           (Que_Treballa   cardio   quadriceps   isquiotibials   glutis   cadera   genolls   tormells   peus)
           (Tipus cardio)
           (repeticions  20 30 40)
           (temps 5 7 10)
)

([Bicicleta_Estatica] of Exercici
           (nomExercici  Bicicleta_Estatica )
           (Que_Treballa   cardio   quadriceps   isquiotibials   glutis   genolls   tormells   peus   dorsals )
           (Tipus cardio)
           (repeticions  1 1 1)
           (temps 20 30 40)
)

([Caminar] of Exercici
           (nomExercici  Caminar )
           (Que_Treballa   cardio   quadriceps   isquiotibials   glutis   cadera   genolls   tormells   peus )
           (Tipus cardio)
           (repeticions  1 1 1)
           (temps 30 45 60)
)   

([Nadar] of Exercici
           (nomExercici  Nadar )
           (Que_Treballa   cardio   dorsals   pectoral   abdominals   biceps   triceps   glutis   quadriceps   isquiotibials )
           (Tipus cardio)
           (repeticions  1 1 1)
           (temps 20 30 40)
)

([Aquagym] of Exercici
           (nomExercici Aquagym )
           (Que_Treballa   cardio   dorsals   pectoral   abdominals   biceps   triceps   glutis   quadriceps   isquiotibials )
           (Tipus cardio)
           (repeticions  1 1 1)
           (temps 30 45 60)
)



;; ------------------Limitacions------------------------------------

([Dolor_esquena] of Limitacions
         (nomLimitacio Dolor_esquena )
         (Bloquejos  pectoral dorsals trapesis espatllaFrontal espatllaPosterior )
         (GrauLesio   invalid )
    )

([Dolor_biceps] of Limitacions
          (nomLimitacio  Dolor_biceps )
         (Bloquejos   biceps )
         (GrauLesio   invalid )
    )

([Dolor_cervicals] of Limitacions
          (nomLimitacio  Dolor_cervicals )
         (Bloquejos   trapesis espatllaFrontal espatllaPosterior cervicals )
         (GrauLesio   invalid )
    )

([Sindrome_tunel_carpia] of Limitacions
         (nomLimitacio  Sindrome_tunel_carpia )
         (Bloquejos   canells )
         (GrauLesio   invalid )
    )

([Tendinitis] of Limitacions
           (nomLimitacio  Tendinitis)
         (Bloquejos   colzes )
         (GrauLesio   invalid )
    )

([Contractura_Muscular_Lumbar] of Limitacions
          (nomLimitacio  Contractura_Muscular_Lumbar )
          (Bloquejos   lumbars )
          (GrauLesio   invalid )
    )

([Espero_calcani] of Limitacions
          (nomLimitacio  Espero_calcani )
         (Bloquejos   peus )
         (GrauLesio   invalid )
    )

([Ciatica] of Limitacions
          (nomLimitacio  Ciatica )
         (Bloquejos   lumbars   glutis   isquiotibials   genolls   peus )
         (GrauLesio   invalid )
    )

([Esquinc_tormell] of Limitacions
         (nomLimitacio  Esquinc_tormell )
         (Bloquejos   tormells )
         (GrauLesio   invalid )
    )

([Hombro_Congelado] of Limitacions
           (nomLimitacio  Hombro_Congelado )
         (Bloquejos   hombro )
         (GrauLesio   invalid )
    )

([Sindrome_Piramidal] of Limitacions
         (nomLimitacio  Sindrome_Piramidal )
         (Bloquejos   glutis   peus )
         (GrauLesio   invalid )
    )

([Bursitis_genoll] of Limitacions
         (nomLimitacio  Bursitis_Rodilla )
         (Bloquejos   genolls )
         (GrauLesio   invalid )
    )

;; ------------------Objectius------------------------------------

([Millorar_la_forca_del_tren_superior] of Objectiu
(nomObjectiu  Millorar_la_forca_del_tren_superior )
(Que_Busca_Treballar  biceps   triceps   espatllaFrontal   espatllaPosterior   trapesis   dorsals   pectoral )
)

([Tonificar_els_abdominals] of Objectiu
(nomObjectiu  Tonificar_els_abdominals )
(Que_Busca_Treballar  abdominals   lumbars   estabilitzador )
)

([Desenvolupar_cames] of Objectiu
(nomObjectiu  Desenvolupar_cames )
(Que_Busca_Treballar  quadriceps   isquiotibials   glutis )
)

([Millorar_la_flexibilitat_i_la_mobilitat] of Objectiu
(nomObjectiu  Millorar_la_flexibilitat_i_la_mobilitat )
(Que_Busca_Treballar  cervicals   cadera   genolls   tormells   quadriceps   isquiotibials   glutis )
)

([Augmentar_la_resistencia_cardiovascular] of Objectiu
(nomObjectiu  Augmentar_la_resistencia_cardiovascular )
(Que_Busca_Treballar  cardio )
)

([Millorar_la_coordinacio_i_l'equilibri] of Objectiu
(nomObjectiu  Millorar_la_coordinacio_i_l'equilibri )
(Que_Busca_Treballar  cervicals   tormells   quadriceps   isquiotibials   estabilitzador )
)

([Reduir_la_tensio_i_millorar_la_postura_de_l'esquena] of Objectiu
(nomObjectiu  Reduir_la_tensio_i_millorar_la_postura_de_l'esquena )
(Que_Busca_Treballar  dorsals   lumbars   trapesis   espatllaPosterior )
)

([Millorar_postura_coordinacio] of Objectiu
(nomObjectiu  Millorar_postura_coordinacio )
         (Que_Busca_Treballar   trapesis   espatllaFrontal   espatllaPosterior )
    )
)
