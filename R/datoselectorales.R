#' Paquete con datos electorales de Chile
#'
#' Este paquete contiene información eletoral de Chile,
#' sólo se han fomateado los nombres y algunos partidos
#' políticos con nombres en distintos formatos.
#' @docType package
#' @name datoselectorales
NULL

#' "Elecciones presidenciales en Chile: 1989-2017"
#'
#' @format Una base de datos con 64366 filas y 21 columnas:
#' \describe{
#'   \item{\code{tipo_de_eleccion}}{character Tipo de elección. En este caso, presidencial.}
#'   \item{\code{cargo}}{character Cargo al que se postula el candidato/a.}
#'   \item{\code{fecha_de_eleccion}}{double Fecha exacta en que se llevó a cabo la elección.}
#'   \item{\code{ano_de_eleccion}}{double Año en que se llevó a cabo la elección.}
#'   \item{\code{periodo}}{character Periodo en que gobernará el presidente electo.}
#'   \item{\code{votacion_presidencial}}{character Si los votos corresponden a primera vuelta, segunda vuelta o elección única (solo en las elecciones de 1989 y 1993).}
#'   \item{\code{id_region}}{double Número idenficiador de la región.}
#'   \item{\code{region}}{character Nombre de la región.}
#'   \item{\code{id_provincia}}{double Número idenficiador de la provincia.}
#'   \item{\code{provincia}}{character Nombre de la provincia.}
#'   \item{\code{comuna}}{character Nombre de la comuna.}
#'   \item{\code{sexo_mesa}}{character Sexo de la mesa de votación (hasta las elecciones del 2009).}
#'   \item{\code{candidato}}{character Nombre completo del candidato o candidata.}
#'   \item{\code{nombres}}{character Nombres del candidato /a.}
#'   \item{\code{apellido_paterno}}{character Apellido paterno del candidato/a.}
#'   \item{\code{apellido_materno}}{character Apellido materno del candidato/a.}
#'   \item{\code{sexo}}{character Sexo al que pertenece el candidato o candidata.}
#'   \item{\code{electo}}{character Si el candidato o candidata es electo/a o no en las elecciones que compite, o si pasa a segunda vuelta.}
#'   \item{\code{partido}}{character Partido al que pertenece el candidato/a.}
#'   \item{\code{sigla_partido}}{character Sigla del partido al que pertenece el candidato/a.}
#'   \item{\code{votos_totales}}{double Votos totales según corresponda.}
#'}
#' @source \url{https://www.servel.cl/resultados-en-excel/}
"presidenciales"

#' "Elecciones municipales en Chile: Alcaldes 2004-2016"
#'@format Base de datos con 18706 filas y 25 columnas:
#' \describe{
#'   \item{\code{tipo_de_eleccion}}{character Tipo de elección. En este caso, de alcaldes.}
#'   \item{\code{cargo}}{character Cargo al que se postula el candidato/a.}
#'   \item{\code{fecha_de_eleccion}}{double Fecha exacta en que se llevó a cabo la elección.}
#'   \item{\code{ano_de_eleccion}}{double Año en que se llevó a cabo la elección.}
#'   \item{\code{inicio_de_periodo}}{double Inicio del periodo del alcalde o alcaldesa electo.}
#'   \item{\code{fin_de_periodo}}{double Término del periodo del alcalde o alcaldesa electo.}
#'   \item{\code{periodo}}{character Periodo en que gobernará el alcalde o alcaldesa electo.}
#'   \item{\code{id_region}}{double Número identificador de la región.}
#'   \item{\code{region}}{character Nombre de la región.}
#'   \item{\code{circunscripcion_senatorial}}{double Circunscripción senatorial.}
#'   \item{\code{distrito}}{double Distrito electoral.}
#'   \item{\code{comuna}}{character Nombre de la comuna.}
#'   \item{\code{circunscripcion_electoral}}{double Circunscripción electoral.}
#'   \item{\code{nombre_circunscripcion_electoral}}{character Nombre de la circunscripción electoral.}
#'   \item{\code{sexo_mesa}}{character Sexo de la mesa de votación (hasta las elecciones del 2009).}
#'   \item{\code{candidato}}{character Nombre completo del candidato/a.}
#'   \item{\code{nombres}}{character Nombre del candidato/a.}
#'   \item{\code{apellido_paterno}}{character Apellido paterno del candidato/a.}
#'   \item{\code{apellido_materno}}{character Apellido materno del candidato/a.}
#'   \item{\code{sexo}}{character Sexo al que pertenece el candidato/a.}
#'   \item{\code{electo}}{character Si el candidato o candidata es electo/a o no en las elecciones que compite, o si pasa a segunda vuelta.}
#'   \item{\code{partido}}{character Partido al que pertenece el candidato/a.}
#'   \item{\code{sigla_partido}}{character Sigla del partido al que pertenece el candidato/a.}
#'   \item{\code{lista}}{character Lista en la que va el partido del candidato/a.}
#'   \item{\code{votos_totales}}{double Votos totales según corresponda.}
#'}
#' @source \url{https://www.servel.cl/resultados-en-excel/}
"alcaldes"
