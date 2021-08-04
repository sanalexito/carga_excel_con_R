
# Se indica el nombre de la pestaña que se quiere cargar
hoja <- "2.1"

# Es necesario indicar la ruta y nombre del archivo.
ruta <- "./II_Marco_Regulatorio_2016_est_nvo_pint.xlsx"

A <- openxlsx::read.xlsx(ruta, hoja, colNames = F, skipEmptyRows = F)

# Casi todos los tabulados del INEGI comienzan con la leyenda "Estados Unidos Mexicanos" y 
# dependiendo de la información contenida terminan con Zacatecas o con algún otro
# texto. En este ejemplo se toma como paro la palabra "Nota:" que aparece en la nota 
# acerca del pintado.

inicio <- grep('Estados Unidos Mexicanos',A$X1)
fin <- grep('Nota:',A$X1)-2

tabla <- A[inicio:fin, ]

View(tabla)
