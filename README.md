# PL1_Estadistica_UAH
Práctica 1 de Estadística - Grado en Ingeniería de Computadores (UAH)
# Práctica de Laboratorio 1: Estadística descriptiva

* **Asignatura:** Estadística
* **Grado:** Ingeniería de Computadores
* **Universidad:** Universidad de Alcalá (UAH)
* **Curso Académico:** 2026-2027

## 1. Descripción del Proyecto
Estudio estadístico descriptivo univariante comparativo basado en el conjunto de datos oficial de *"COVID-19. Intervenciones del Cuerpo de Bomberos"* del Portal de Datos Abiertos del Ayuntamiento de Madrid.

* **Variable Cualitativa:** `distrito` (comparando los distritos **CENTRO** con $N=106$ observaciones y **PUENTE VALLECAS** con $N=50$ observaciones, cumpliendo la condición de superar las 30 intervenciones).
* **Variable Cuantitativa Continua:** `duracion` (tiempo de actuación de los bomberos medido en horas).
  
## 2. Resultados Estadísticos Principales

| Medida Estadística | Distrito Centro | Distrito Puente de Vallecas |
| :--- | :---: | :---: |
| **Tamaño Muestral ($N$)** | 106 | 50 (49 válidos) |
| **Media Aritmética ($\bar{x}$)** | 3,45 horas | 0,70 horas |
| **Mediana ($Me$)** | 1,38 horas | 0,41 horas |
| **Desviación Típica ($s$)** | 5,40 horas | 0,75 horas |
| **Rango Intercuartílico ($IQR$)** | 2,78 horas | 0,91 horas |

## 3. Contenido del Repositorio
* `Intervenciones bomberos COVID-19 (1).csv`: Fichero de datos utilizado.
* `script_analisis.R`: Código fuente en R para el cálculo de estadísticos y generación de gráficos.
* `diagrama_cajas.png`: Gráfico estático comparativo (Boxplot).
* `grafico_interactivo.html`: Gráfico interactivo generado mediante `plotly`.
