n <- 17
#2.1). Создать вектор имён файлов file.names вида: <регион>_Y<год>_Q<квартал>.csv
#Создадим данные в виде соответствующих переменных
regions <- c('Адыгея', 'Ставропольский край', 'Краснодарский край')
years <- c(2017, 2018)
quarter <- c(1,2,3,4)
file.names <- c(paste(rep(regions,each = 8),paste0("Y",rep(years,each = 4)),paste0("Q",rep(quarter, 6),".csv"),sep = "_"))
file.names

#2.2).Создайте фрейм df.seq со столбцами num, regions, flow, okpd.code по праилам правилам
num <- seq(from = n,to =n+5)#нумерация начинается с n
flow <- c("import","export")#виды товарного потока, где у регионов есть каждый
okpd.code <- "26"
df.seq <- data.frame(num,region=rep(regions,each=2),flow,okpd.code)
df.seq

#2.3).Задайте ядро для генерации случайных чисел с помощью функции set.seed(n * 10). Создайте фрейм данных df.rand из 7 строк со столбцами

set.seed(n*10) #рандом 
x.n <- rnorm(n = 7, mean = 15, sd = 4) #нормальная св со средним = 15 и ско = 4
x.u <- runif(n = 7, min = -7 , max = 29) #равномерная св [-7;29]
x.t <- rt(n = 7, df = 3) #св Стьюдента с числом степеней свободы = 3
df.rand <- data.frame(x.n, x.u, x.t) # фрейм случайных величин
df.rand
