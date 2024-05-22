(definstances instances

([Flexions_De_Bracos] of Exercici
           (nomExercici  FlexionsDeBrasos )
           (QueTreballa   colzes biceps   triceps   espatllaFrontal   deltoides   pectoral   estabilitzador )
           (Tipus forsa)
           (Repeticions  5 10 20)
           (TempsDedicat 3 7 10)
)

([Dominades] of Exercici
           (nomExercici  Dominades )
           (QueTreballa   dorsals   biceps   trapesis   estabilitzador hombro)
           (Tipus forsa)
           (Repeticions 5 10 15)
           (TempsDedicat 3 7 10)
)

([Elevacions_Laterals_Amb_Pes] of Exercici
           (nomExercici  ElevacionsLateralsAmbPes )
           (QueTreballa   deltoides   trapesis )
           (Tipus forsa)
           (Repeticions  8 12 20)
           (TempsDedicat 5 8 12)
)

([Flexions_De_Biceps_Amb_Pes] of Exercici
           (nomExercici  FlexionsDeBicepsAmbPes )
           (QueTreballa   biceps colzes )
           (Tipus forsa)
           (Repeticions  10 15 20)
           (TempsDedicat 5 10 15)
)

([Press_De_Banca] of Exercici
           (nomExercici  PressDeBanca )
           (QueTreballa   deltoides   pectoral   triceps   trapesis   estabilitzador )
           (Tipus forsa)
           (Repeticions  8 12 15)
           (TempsDedicat 5 10 15)
)

([Press_Militar] of Exercici
           (nomExercici  PressMilitar )
           (QueTreballa   deltoides   triceps   trapesis )
           (Tipus forsa)
           (Repeticions  5 10 15)
           (TempsDedicat 5 10 15)
)

([Hip_Thrusts] of Exercici
           (nomExercici  HipThrusts )
           (QueTreballa   glutis   quadriceps   isquiotibials )
           (Tipus forsa)
           (Repeticions  10 15 20)
           (TempsDedicat 5 10 15)
)

([Squats] of Exercici
           (nomExercici  Squats )
           (QueTreballa   quadriceps   glutis   isquiotibials   trapesis   estabilitzador )
           (Tipus forsa)
           (Repeticions  10 15 20)
           (TempsDedicat 8 12 16)
)

([Planchas] of Exercici
           (nomExercici  Planchas )
           (QueTreballa   colzes abdominals   lumbars   trapesis   estabilitzador )
           (Tipus resistencia)
           (Repeticions  1 1 1)
           (TempsDedicat 3 5 10)
)

([Deadlifts] of Exercici
           (nomExercici  Deadlifts )
           (QueTreballa   dorsals   glutis   isquiotibials   trapesis   estabilitzador )
           (Tipus forsa)
           (Repeticions  8 12 15)
           (TempsDedicat 5 10 15)
)

([Lunges] of Exercici
           (nomExercici  Lunges )
           (QueTreballa   quadriceps   glutis   isquiotibials   estabilitzador )
           (Tipus forsa)
           (Repeticions  8 12 15)
           (TempsDedicat 5 10 15)
)

([Burpees] of Exercici
           (nomExercici  Burpees )
           (QueTreballa   colzes deltoides   pectoral   triceps   quadriceps   isquiotibials   glutis   estabilitzador )
           (Tipus explosivitat)
           (Repeticions  5 10 15)
           (TempsDedicat 4 8 12)
)

([Mountain_Climbers] of Exercici
           (nomExercici  MountainClimbers )
           (QueTreballa   abdominals   quadriceps   deltoides   glutis   isquiotibials   estabilitzador )
           (Tipus resistencia)
           (Repeticions  10 20 30)
           (TempsDedicat 3 5 7)
)

;;------------------------Cardio-----------------------------------
([Correr_En_Maquina] of Exercici
           (nomExercici  Correr )
           (QueTreballa   cardio   quadriceps   isquiotibials   glutis   cadera   genolls   tormells   peus   cervicals )
           (Tipus cardio)
           (Repeticions  1 1 1)
           (TempsDedicat 7 15 30)
)

([Lateral_Toe_Tabs] of Exercici
           (nomExercici  Lateral_Toe_Tabs )
           (QueTreballa   cardio   quadriceps   isquiotibials   glutis   cadera   genolls   tormells   peus)
           (Tipus cardio)
           (Repeticions  20 30 40)
           (TempsDedicat 5 7 10)
)

([Bicicleta_Estatica] of Exercici
           (nomExercici  Bicicleta_Estatica )
           (QueTreballa   cardio   quadriceps   isquiotibials   glutis   genolls   tormells   peus   dorsals )
           (Tipus cardio)
           (Repeticions  1 1 1)
           (TempsDedicat 7 15 30)
)

([Caminar] of Exercici
           (nomExercici  Caminar )
           (QueTreballa   cardio   quadriceps   isquiotibials   glutis   cadera   genolls   tormells   peus )
           (Tipus cardio)
           (Repeticions  1 1 1)
           (TempsDedicat 7 15 30)
)   

([Nadar] of Exercici
           (nomExercici  Nadar )
           (QueTreballa   cardio   dorsals   pectoral   abdominals   biceps   triceps   glutis   quadriceps   isquiotibials )
           (Tipus cardio)
           (Repeticions  3 5 10)
           (TempsDedicat 8 12 17)
)

([Aquagym] of Exercici
           (nomExercici Aquagym )
           (QueTreballa   cardio   dorsals   pectoral   abdominals   biceps   triceps   glutis   quadriceps   isquiotibials )
           (Tipus cardio)
           (Repeticions  1 1 1)
           (TempsDedicat 7 15 30)
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
