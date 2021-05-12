raw_glioma <- read_xlsx('/Users/Donel/Desktop/Glioma/raw_data/Gliome.xlsx')

library(tidyverse)
library(readxl)



names(raw_glioma)[names(raw_glioma) == "Гистология"] <- "Histology"
names(raw_glioma)[names(raw_glioma) == "Возраст"] <- "Age"
names(raw_glioma)[names(raw_glioma) == "Глубина обьемного образования в мм"] <- "Depth_of_neoplasm_mm"
names(raw_glioma)[names(raw_glioma) == "Головная боль (0- нет,  1 - есть)"] <- "Headache"
names(raw_glioma)[names(raw_glioma) == "Группа послеоперационная"] <- "Postoperative_group"
names(raw_glioma)[names(raw_glioma) == "Группа тотальности >98 ; 95-98; <95"] <- "Totality_group"
names(raw_glioma)[names(raw_glioma) == "Дата контроля"] <- "Control_date"
names(raw_glioma)[names(raw_glioma) == "Дата МРТ"] <- "MRI_date"
names(raw_glioma)[names(raw_glioma) == "Дата Операции"] <- "Date_of_operation"
names(raw_glioma)[names(raw_glioma) == "двигательные нарушения (0-нет,1-асимптомные,-2 легкий геми- монопарез, 3 - умеренный геми- монопарез, 4 - глубокий гемипарез и гемиплегия)"] <- "Movement_disorders "
names(raw_glioma)[names(raw_glioma) == "Доля (1-лобная, 2-височная, 3-затылочная, 4-островковая,5-теменная, 6 - таламус)"] <- "Lobe"
names(raw_glioma)[names(raw_glioma) == "Застой на глазном дне (0-нет, 1-есть)"] <- "Fundus_congestion "
names(raw_glioma)[names(raw_glioma) == "Зона кровоснабжения (1-магистр сосуд (сильвиева щель, перфоранты) 2-пма; 3-сма; 4-зма)"] <- "Blood_supply_zone"
names(raw_glioma)[names(raw_glioma) == "Инвазия в базальные ядра, таламус."] <- "Invasion_basal_nuclei"
names(raw_glioma)[names(raw_glioma) == "Индекс Карнофски"] <- "Karnofsky"
names(raw_glioma)[names(raw_glioma) == "Критерий Макдональда, мм2"] <- "Macdonald_mm2"
names(raw_glioma)[names(raw_glioma) == "Локализация: (1-правое полушарие, левая затылочная доля; 2-левое полушарие кроме затылка; 3- мозолистое тело,  таламус)"] <- "Localization"
names(raw_glioma)[names(raw_glioma) == "мозолистое тело, билатеральное расположение (0-нет, 1-да)"] <- "Bilateral_location_corpus_callosum"
names(raw_glioma)[names(raw_glioma) == "МРТиндекс>2 (0-нет, 1-да)"] <- "MRI_index"
names(raw_glioma)[names(raw_glioma) == "Наибольший диаметр контрастируемой зоны, мм"] <- "Largest_diameteк_zone_mm"
names(raw_glioma)[names(raw_glioma) == "Наибольший перпендикуляр мм"] <- " Great_perpendicular_mm"
names(raw_glioma)[names(raw_glioma) == "Наличие кистозного компонента (0-нет, 1-да)"] <- "Cystic_component"
names(raw_glioma)[names(raw_glioma) == "Неврологический дефицит (0-нет, 1-да)"] <- "Neurological_deficit"
names(raw_glioma)[names(raw_glioma) == "Общая сумма балов...51"] <- "Sum_point_51"
names(raw_glioma)[names(raw_glioma) == "Общая сумма балов...56"] <- "Sum_point_56"
names(raw_glioma)[names(raw_glioma) == "Объем образования, куб.мм"] <- "Education_volume_mm"
names(raw_glioma)[names(raw_glioma) == "Обьем неудаленной опухоли по сегментации мм3"] <- "Volume_of_unremoved_tumor"
names(raw_glioma)[names(raw_glioma) == "Обьем образования посчитанный при помощи сегментации"] <- "Volume_segmentation"
names(raw_glioma)[names(raw_glioma) == "Обьем резекции %"] <- "Resection_Volume"
names(raw_glioma)[names(raw_glioma) == "Осложнения (0-нет, 1-гем., 2-отек, 3- воспалительные в/черепные, 4- воспалительные внечерепные, 5 - смерть)"] <- "Complications"
names(raw_glioma)[names(raw_glioma) == "Осложнения невр (0-нет, 1-общемозг., 2 -очаг)"] <- "Complications_neurological"
names(raw_glioma)[names(raw_glioma) == "Отек > 10 мм (0-нет, 1-да)"] <- "Swelling"
names(raw_glioma)[names(raw_glioma) == "Первично - множественный"] <- "Primary_plural"
names(raw_glioma)[names(raw_glioma) == "Площадь инвазии"] <- "Invasion_area"
names(raw_glioma)[names(raw_glioma) == "Площадь патологической зоны"] <- "Patological_area"
names(raw_glioma)[names(raw_glioma) == "ПОЛ (1-ж, 2-м)"] <- "Sex"
names(raw_glioma)[names(raw_glioma) == "Послеоперационный обьем"] <- "Postoperative_volume_tumor"
names(raw_glioma)[names(raw_glioma) == "Послеоперационный Обьем образования посчитанный при помощи сегментации"] <- "Postoperative_volume_tumor_segmentation"
names(raw_glioma)[names(raw_glioma) == "Прогностический индекс"] <- "Predictive_index"
names(raw_glioma)[names(raw_glioma) == "размер обьеного образования >5см"] <- "educations_ize>5cm"
names(raw_glioma)[names(raw_glioma) == "Разница"] <- "Difference"
names(raw_glioma)[names(raw_glioma) == "Речевые нарушения  (0- нет, 2- ненарушена способность общения, 3- нарушена способность общения, 4 - неспособность к общению)"] <- "Speech_disorders"
names(raw_glioma)[names(raw_glioma) == "Сложность тотальной резекции по Giannantonio Spena 0-лег 1-ср 2-тяж"] <- "Difficulty_by_Spena"
names(raw_glioma)[names(raw_glioma) == "Сложность тотальной резекции по Hani J. Marcus 0-лег 1-ср 2-тяж"] <- "Difficulty_by_Marcus"
names(raw_glioma)[names(raw_glioma) == "Сложность тотальной резекции по Jaume Capellades (0-лег 1-ср 2-тяж)"] <- "Difficulty_by_Capellades"
names(raw_glioma)[names(raw_glioma) == "Смещение срединных структур, мм"] <- "Displacement_midline_str_mm"
names(raw_glioma)[names(raw_glioma) == "степень накопления КВ (0-нет, 1-да)"] <- "accumulation _of_CV"
names(raw_glioma)[names(raw_glioma) == "Сторона поражения (правое-1, левое-2, обе-3, мозолистое тело - 4)"] <- "The_affected_side"
names(raw_glioma)[names(raw_glioma) == "Судороги (0 - нет, 2- фокальные, 3 - генерализованные, 4 - эпистатус)"] <- "Convulsions"
names(raw_glioma)[names(raw_glioma) == "судорожный синдром (0-нет, 1-да)"] <- "Сonvulsive_syndrome "
names(raw_glioma)[names(raw_glioma) == "Тошнота рвота  (0- нет, 1 - есть)"] <- "Nausea"
names(raw_glioma)[names(raw_glioma) == "Трактография"] <- "Tractography"
names(raw_glioma)[names(raw_glioma) == "Третий размер, мм"] <- "Third_size_mm"
names(raw_glioma)[names(raw_glioma) == "Уровень сознания (0-ясное,1- умеренное оглушение, 2 -глубокое оглушение, 3- сопор, 4 -кома)"] <- "Consciousness"
names(raw_glioma)[names(raw_glioma) == "ФИО"] <- "Name"
names(raw_glioma)[names(raw_glioma) == "функционально важная зона"] <- "Funct_important_area"
names(raw_glioma)[names(raw_glioma) == "функционально важная структура"] <- "Functionally_important_structure"
names(raw_glioma)[names(raw_glioma) == "Хирург Свистов Д.В. - 1; Мартынов Б.В. - 2; Лапшин Р.А. - 3; Гайворонский А.И. - 4; Долги В.Н. - 5; Гаврилов Г.В. - 6;"] <- "Surgeon"
names(raw_glioma)[names(raw_glioma) == "Четкие края опухоли (0-нет, 1-да)"] <- "Clear_tumor_edges"
names(raw_glioma)[names(raw_glioma) == "Butterfly -глиомы"] <- "Butterfly_gliome"
names(raw_glioma)[names(raw_glioma) == "<10мм до желудочков (0-нет, 1-да)"] <- "less_10_distance_ventricles"
names(raw_glioma)[names(raw_glioma) == "> 40 мм (0-нет, 1-да)"] <- "dist_more_40_ventricles"
names(raw_glioma)[names(raw_glioma) == "> 80см3 (0-нет, 1-да)"] <- "dist_more_80_ventricles"
names(raw_glioma)[names(raw_glioma) == "Наибольший перпендикуляр по Т2"] <- "Greatest_perpendicular_T2"
names(raw_glioma)[names(raw_glioma) == "Наибольший диаметр по Т2"] <- "Largest_diameter_Т2"


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





raw_glioma$Totality_group[raw_glioma$Totality_group == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'
raw_glioma$[raw_glioma$ == '-'] <- '0'




