#3.Исходные данные
dfLab <- read.csv("FGLab.csv", stringsAsFactors = F,row.names = 1)
dfLab
#3.1). Сотрудники, их имя и рост
dfLab1 <- dfLab[dfLab$Пол == "муж", c("Имя", "Возраст"), ]
dfLab1
#3.2). Фрейм с именами всех сотрудников, кроме 2 и 8
dfLab2 <- dfLab[c(-2,-8), "Имя",drop = FALSE]
dfLab2
#3.3). Подсчитат средний возраст сотрудников-женщин
sred <- dfLab[dfLab$Пол == "жен", "Возраст"]
mean(sred)
#3.4). Определите имя самого высокого сотрудника-мужчины
m <- max(dfLab$Рост)
height <- dfLab[dfLab$Пол == "муж" & dfLab$Рост == m, "Имя"]
height

