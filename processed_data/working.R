raw_glioma <- read_xlsx('/Users/Donel/Desktop/Glioma/raw_data/Gliome.xlsx')
raw_glioma <- raw_glioma[,1:57]
work_gl <- select(raw_glioma, -Histology)

str(raw_glioma)

library(tidyverse)
library(readxl)
library(dplyr)


names(raw_glioma)[names(raw_glioma) == "Гистология"] <- "Histology"
names(raw_glioma)[names(raw_glioma) == "Возраст"] <- "Age"
names(raw_glioma)[names(raw_glioma) == "Глубина обьемного образования в мм"] <- "Neoplasm_depth"
names(raw_glioma)[names(raw_glioma) == "Головная боль (0- нет,  1 - есть)"] <- "Headache"
names(raw_glioma)[names(raw_glioma) == "Группа послеоперационная"] <- "Postgroup"
names(raw_glioma)[names(raw_glioma) == "Группа тотальности >98 ; 95-98; <95"] <- "Total_group"
names(raw_glioma)[names(raw_glioma) == "Дата контроля"] <- "Control_date"
names(raw_glioma)[names(raw_glioma) == "Дата МРТ"] <- "MRI_date"
names(raw_glioma)[names(raw_glioma) == "Дата Операции"] <- "Operation_date"
names(raw_glioma)[names(raw_glioma) == "двигательные нарушения (0-нет,1-асимптомные,-2 легкий геми- монопарез, 3 - умеренный геми- монопарез, 4 - глубокий гемипарез и гемиплегия)"] <- "Movement_disorders"
names(raw_glioma)[names(raw_glioma) == "Доля (1-лобная, 2-височная, 3-затылочная, 4-островковая,5-теменная, 6 - таламус)"] <- "Lobe"
names(raw_glioma)[names(raw_glioma) == "Застой на глазном дне (0-нет, 1-есть)"] <- "Fundus_congestion"
names(raw_glioma)[names(raw_glioma) == "Зона кровоснабжения (1-магистр сосуд (сильвиева щель, перфоранты) 2-пма; 3-сма; 4-зма)"] <- "Blood_supply_zone"
names(raw_glioma)[names(raw_glioma) == "Инвазия в базальные ядра, таламус."] <- "Invasion_basal_nuclei"
names(raw_glioma)[names(raw_glioma) == "Индекс Карнофски"] <- "Karnofsky"
names(raw_glioma)[names(raw_glioma) == "Критерий Макдональда, мм2"] <- "Macdonald"
names(raw_glioma)[names(raw_glioma) == "Локализация: (1-правое полушарие, левая затылочная доля; 2-левое полушарие кроме затылка; 3- мозолистое тело,  таламус)"] <- "C_localization"
names(raw_glioma)[names(raw_glioma) == "мозолистое тело, билатеральное расположение (0-нет, 1-да)"] <- "M_bilateral_location_corcall"
names(raw_glioma)[names(raw_glioma) == "МРТиндекс>2 (0-нет, 1-да)"] <- "S_MRI_index"
names(raw_glioma)[names(raw_glioma) == "Наибольший диаметр контрастируемой зоны, мм"] <- "Largest_diameter"
names(raw_glioma)[names(raw_glioma) == "Наибольший перпендикуляр мм"] <- "Great_perpendicular"
names(raw_glioma)[names(raw_glioma) == "Наличие кистозного компонента (0-нет, 1-да)"] <- "S_cystic_component"
names(raw_glioma)[names(raw_glioma) == "Неврологический дефицит (0-нет, 1-да)"] <- "S_neuro_deficit"
names(raw_glioma)[names(raw_glioma) == "Общая сумма балов...51"] <- "M_sum_point_51"
names(raw_glioma)[names(raw_glioma) == "Общая сумма балов...56"] <- "C_Sum_point_56"
names(raw_glioma)[names(raw_glioma) == "Объем образования, куб.мм"] <- "Education_volume_mm"
names(raw_glioma)[names(raw_glioma) == "Обьем неудаленной опухоли по сегментации мм3"] <- "Unremoved_volume"
names(raw_glioma)[names(raw_glioma) == "Обьем образования посчитанный при помощи сегментации"] <- "Volume_segmentation"
names(raw_glioma)[names(raw_glioma) == "Обьем резекции %"] <- "Resection_Volume"
names(raw_glioma)[names(raw_glioma) == "Осложнения (0-нет, 1-гем., 2-отек, 3- воспалительные в/черепные, 4- воспалительные внечерепные, 5 - смерть)"] <- "Complications"
names(raw_glioma)[names(raw_glioma) == "Осложнения невр (0-нет, 1-общемозг., 2 -очаг)"] <- "Complications_neurological"
names(raw_glioma)[names(raw_glioma) == "Отек > 10 мм (0-нет, 1-да)"] <- "M_swelling"
names(raw_glioma)[names(raw_glioma) == "Первично - множественный"] <- "Primary_plural"
names(raw_glioma)[names(raw_glioma) == "Площадь инвазии"] <- "Invasion_area"
names(raw_glioma)[names(raw_glioma) == "Площадь патологической зоны"] <- "Patological_area"
names(raw_glioma)[names(raw_glioma) == "ПОЛ (1-ж, 2-м)"] <- "Sex"
names(raw_glioma)[names(raw_glioma) == "Послеоперационный обьем"] <- "Postoperative_volume"
names(raw_glioma)[names(raw_glioma) == "Послеоперационный Обьем образования посчитанный при помощи сегментации"] <- "Postoperative_volume_segmentation"
names(raw_glioma)[names(raw_glioma) == "Прогностический индекс"] <- "S_predictive_index"
names(raw_glioma)[names(raw_glioma) == "размер обьеного образования >5см"] <- "C_size_more"
names(raw_glioma)[names(raw_glioma) == "Разница"] <- "Difference"
names(raw_glioma)[names(raw_glioma) == "Речевые нарушения  (0- нет, 2- ненарушена способность общения, 3- нарушена способность общения, 4 - неспособность к общению)"] <- "Speech_disorders"
names(raw_glioma)[names(raw_glioma) == "Сложность тотальной резекции по Giannantonio Spena 0-лег 1-ср 2-тяж"] <- "S_Difficulty_by_Spena"
names(raw_glioma)[names(raw_glioma) == "Сложность тотальной резекции по Hani J. Marcus 0-лег 1-ср 2-тяж"] <- "M_difficulty_by_Marcus"
names(raw_glioma)[names(raw_glioma) == "Сложность тотальной резекции по Jaume Capellades (0-лег 1-ср 2-тяж)"] <- "C_difficulty_by_Capellades"
names(raw_glioma)[names(raw_glioma) == "Смещение срединных структур, мм"] <- "Displacement_midline_str_mm"
names(raw_glioma)[names(raw_glioma) == "степень накопления КВ (0-нет, 1-да)"] <- "S_accumulation_CV"
names(raw_glioma)[names(raw_glioma) == "Сторона поражения (правое-1, левое-2, обе-3, мозолистое тело - 4)"] <- "The_affected_side"
names(raw_glioma)[names(raw_glioma) == "Судороги (0 - нет, 2- фокальные, 3 - генерализованные, 4 - эпистатус)"] <- "Convulsions"
names(raw_glioma)[names(raw_glioma) == "судорожный синдром (0-нет, 1-да)"] <- "S_convulsive_syndrome"
names(raw_glioma)[names(raw_glioma) == "Тошнота рвота  (0- нет, 1 - есть)"] <- "Nausea"
names(raw_glioma)[names(raw_glioma) == "Трактография"] <- "Tractography"
names(raw_glioma)[names(raw_glioma) == "Третий размер, мм"] <- "Third_size"
names(raw_glioma)[names(raw_glioma) == "Уровень сознания (0-ясное,1- умеренное оглушение, 2 -глубокое оглушение, 3- сопор, 4 -кома)"] <- "Consciousness"
names(raw_glioma)[names(raw_glioma) == "ФИО"] <- "Name"
names(raw_glioma)[names(raw_glioma) == "функционально важная зона"] <- "M_funct_important_area"
names(raw_glioma)[names(raw_glioma) == "функционально важная структура"] <- "C_Functionally__structure"
names(raw_glioma)[names(raw_glioma) == "Хирург Свистов Д.В. - 1; Мартынов Б.В. - 2; Лапшин Р.А. - 3; Гайворонский А.И. - 4; Долги В.Н. - 5; Гаврилов Г.В. - 6;"] <- "Surgeon"
names(raw_glioma)[names(raw_glioma) == "Четкие края опухоли (0-нет, 1-да)"] <- "S_clear_tumor_edges"
names(raw_glioma)[names(raw_glioma) == "Butterfly -глиомы"] <- "Butterfly_gliome"
names(raw_glioma)[names(raw_glioma) == "<10мм до желудочков (0-нет, 1-да)"] <- "M_less_10_distance"
names(raw_glioma)[names(raw_glioma) == "> 40 мм (0-нет, 1-да)"] <- "M_dist_more_40"
names(raw_glioma)[names(raw_glioma) == "> 80см3 (0-нет, 1-да)"] <- "S_dist_more_80"
names(raw_glioma)[names(raw_glioma) == "Наибольший перпендикуляр по Т2"] <- "Grea_perpendicular_T2"
names(raw_glioma)[names(raw_glioma) == "Наибольший диаметр по Т2"] <- "Larg_diameter_Т2"

work_gl <- raw_glioma

raw_glioma$Tractography

# Замена значений переменных, на те что возможно использовать
raw_glioma$Tractography[raw_glioma$Tractography == '+'] <- '1'
raw_glioma$Tractography[raw_glioma$Tractography == '-'] <- '0'
raw_glioma$Primary_plural[raw_glioma$Primary_plural == '-'] <- '0'
raw_glioma$Primary_plural[raw_glioma$Primary_plural == '+'] <- '1'

raw_glioma$Invasion_area[raw_glioma$Invasion_area == '-'] <- '0'
raw_glioma$Invasion_area[raw_glioma$Invasion_area == '+'] <- '1'


raw_glioma$Invasion_basal_nuclei[raw_glioma$Invasion_basal_nuclei == '-'] <- '0'
raw_glioma$Invasion_basal_nuclei[raw_glioma$Invasion_basal_nuclei == '+'] <- '1'
raw_glioma$Butterfly_gliome[raw_glioma$Butterfly_gliome == '-'] <- '0'
raw_glioma$Butterfly_gliome[raw_glioma$Butterfly_gliome == '+'] <- '1'
raw_glioma$Date_of_operation[raw_glioma$Date_of_operation == '?'] <- NA

#Группа тотальности >98 ; 95-98; <95
raw_glioma$Totality_group[raw_glioma$Totality_group == '<95%'] <- '1'
raw_glioma$Totality_group[raw_glioma$Totality_group == '95-98%'] <- '2'
raw_glioma$Totality_group[raw_glioma$Totality_group == '>98%'] <- '3'


#Группа послеоперационная 
raw_glioma$Postoperative_group[raw_glioma$Postoperative_group == '<1000'] <- '1'
raw_glioma$Postoperative_group[raw_glioma$Postoperative_group == '1000-2000'] <- '2'
raw_glioma$Postoperative_group[raw_glioma$Postoperative_group == '>2000'] <- '3'
str(raw_glioma)

raw_glioma$MRI_date[raw_glioma$MRI_date == '-'] <- '.'
raw_glioma$[raw_glioma$ == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'



#Sex
work_gl$Sex <- as.character(gsub(2,"man" , gsub(1,"woman" , work_gl$Sex)))

work_gl$The_affected_side <- as.character(gsub(2,"Right" , gsub(1,"Left" ,gsub(3, "both_sides", gsub(4, "corpus_callosum", work_gl$The_affected_side)))))
 
work_gl$S_convulsive_syndrome <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_convulsive_syndrome)))


#
work_gl$The_affected_side <- as.character(gsub(2,"Right" , gsub(1,"Left" ,gsub(3, "both_sides", gsub(4, "corpus_callosum", work_gl$The_affected_side)))))
#
work_gl$Lobe <- as.character(gsub(2,"temporal" , gsub(1,"frontal" ,
                                                      gsub(3, "occipital", gsub(4, "insular", 
                                                                                gsub(5, "parietal",gsub(6, "thalamus", work_gl$Lobe)))))))
#
work_gl$Consciousness <- as.character(gsub(2,"deep_stun" , gsub(1,"moderate_stun" ,
                                                                gsub(3, "stupor", gsub(4, "coma", 
                                                                                       gsub(0, "clear", work_gl$Consciousness))))))
#
work_gl$Headache <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$Headache)))
Nausea
#
work_gl$Nausea <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$Nausea)))

#Speech_disorders
work_gl$Speech_disorders <- as.character(gsub(2,"ability_communicate" ,
                                              gsub(3, "no_ability_communicate", gsub(4, "inability_communicate", 
#Fundus_congestion
work_gl$Fundus_congestion <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$Fundus_congestion)))
#Complications

work_gl$Complications <- as.character(gsub(2,"edema" , gsub(1,"hem" ,
                                                      gsub(3, "inflammatory_intracranial", gsub(4, "inflammatory_extracranial", 
                                                                                gsub(5, "death",gsub(0, "false", work_gl$Complications)))))))
#Complications_neurological
work_gl$Complications_neurological <- as.character(gsub(0,"False" , gsub(1,"cerebral" , gsub(2,"focal" ,work_gl$Complications_neurological))))

#S_clear_tumor_edges
work_gl$S_clear_tumor_edges <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_clear_tumor_edges)))

#S_cystic_component
work_gl$S_clear_tumor_edges <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_clear_tumor_edges)))

#S_dist_more_80
work_gl$S_dist_more_80 <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_dist_more_80)))

#S_convulsive_syndrome
work_gl$S_convulsive_syndrome <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_convulsive_syndrome)))

#S_neuro_deficit
work_gl$S_neuro_deficit <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_neuro_deficit)))

#S_MRI_index
work_gl$S_MRI_index <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_MRI_index)))

#S_accumulation_CV
work_gl$S_accumulation_CV <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$S_accumulation_CV)))

#S_Difficulty_by_Spena
work_gl$S_Difficulty_by_Spena <- as.character(gsub(0,"easy" , gsub(1,"medium" , gsub(2,"hard" ,work_gl$S_Difficulty_by_Spena))))

#M_less_10_distance
work_gl$M_less_10_distance <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$M_less_10_distance)))

#M_bilateral_location_corcall
work_gl$M_bilateral_location_corcall <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$M_bilateral_location_corcall)))

#M_funct_important_area
work_gl$M_funct_important_area <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$M_funct_important_area)))

#M_swelling
work_gl$M_swelling <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$M_swelling)))

#M_dist_more_40
work_gl$M_dist_more_40 <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$M_dist_more_40)))

#M_difficulty_by_Marcus
work_gl$M_difficulty_by_Marcus <- as.character(gsub(0,"easy" , gsub(1,"medium" , gsub(2,"hard" ,work_gl$M_difficulty_by_Marcus))))

#C_size>5cm
work_gl$C_size_more <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$C_size_more)))

#C_Functionally__structure
work_gl$C_Functionally__structure <- as.character(gsub(0,"False" , gsub(1,"True" , work_gl$C_Functionally__structure)))

#C_difficulty_by_Capellades
work_gl$C_difficulty_by_Capellades <- as.character(gsub(0,"easy" , gsub(1,"medium" , gsub(2,"hard" ,work_gl$C_difficulty_by_Capellades))))

#Movement_disorders
work_gl$Movement_disorders <- as.character(gsub(2,"mild_hemimonoparesis" , gsub(1,"asymptomatic" ,
                                                            gsub(3, "moderate_hemimonoparesis", 
                                                                 gsub(4, "deep_hemiparesis_hemiplegia",
                                                                    gsub(0, "false", work_gl$Movement_disorders))))))

str(work_gl)

raw_glioma$S_convulsive_syndrome

#EDA

library(ggplot2)
library(PerformanceAnalytics)

Metric_df <- select(work_gl, c(Largest_diameter, Great_perpendicular, Education_volume_mm, Volume_segmentation))

chart.Boxplot(Metric_df)

