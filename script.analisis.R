if (!require("plotly")) install.packages("plotly")
library(plotly)

datos <- read.csv("Intervenciones bomberos COVID-19 (1).csv", sep=";", encoding="latin1")

datos$duracion_num <- as.numeric(gsub(",", ".", datos$duracion))

centro <- subset(datos, distrito == "CENTRO")
vallecas <- subset(datos, distrito == "PUENTE VALLECAS")

length(centro$duracion_num)
mean(centro$duracion_num, na.rm=TRUE)
median(centro$duracion_num, na.rm=TRUE)
sd(centro$duracion_num, na.rm=TRUE)
var(centro$duracion_num, na.rm=TRUE)
quantile(centro$duracion_num, na.rm=TRUE)
IQR(centro$duracion_num, na.rm=TRUE)

length(vallecas$duracion_num)
mean(vallecas$duracion_num, na.rm=TRUE)
median(vallecas$duracion_num, na.rm=TRUE)
sd(vallecas$duracion_num, na.rm=TRUE)
var(vallecas$duracion_num, na.rm=TRUE)
quantile(vallecas$duracion_num, na.rm=TRUE)
IQR(vallecas$duracion_num, na.rm=TRUE)

png("diagrama_cajas.png", width=800, height=600)
boxplot(centro$duracion_num, vallecas$duracion_num, 
        names=c("Centro (106)", "Puente Vallecas (50)"),
        main="Comparativa Duración de Intervenciones COVID-19",
        ylab="Horas de duración", col=c("skyblue", "lightgreen"))
dev.off()

p <- plot_ly() %>%
  add_boxplot(y = centro$duracion_num, name = "Centro", fillcolor = "rgba(135, 206, 235, 0.6)") %>%
  add_boxplot(y = vallecas$duracion_num, name = "Puente Vallecas", fillcolor = "rgba(144, 238, 144, 0.6)") %>%
  layout(title = "Gráfico Interactivo (Plotly) - Duración de Intervenciones de Bomberos",
         yaxis = list(title = "Horas de Duración"))

htmlwidgets::saveWidget(p, "grafico_interactivo.html")
