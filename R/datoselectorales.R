#' @title datoselectorales
#' @description Datos electorales de las elecciones presidenciales en Chile desde 1989.
#' @format Contiene 64366 filas y 21 columnas.
#' \describe{
#'   \item{\code{tipo_de_eleccion}}{character Tipo de elección. En este caso, presidencial.}
#'   \item{\code{fecha_de_eleccion}}{double Fecha exacta en que se llevó a cabo la elección.}
#'   \item{\code{ano_de_eleccion}}{double Año en que se llevó a cabo la elección.}
#'   \item{\code{periodo}}{character Periodo en que gobernará el presidente electo.}
#'   \item{\code{votacion_presidencial}}{character Si los votos corresponden a primera vuelta, segunda vuelta o elección única (solo en las elecciones de 1989 y 1993).}
#'   \item{\code{id_region}}{double Número idenficiador de la región.}
#'   \item{\code{region}}{character Nombre de la región.}
#'   \item{\code{provincia}}{character Número identificador de la provincia.}
#'   \item{\code{nombre_provincia}}{character Nombre de la provincia.}
#'   \item{\code{comuna}}{character Nombre de la comuna.}
#'   \item{\code{sexo_mesa}}{character Sexo de la mesa.}
#'   \item{\code{candidato}}{character Nombre completo del candidato.}
#'   \item{\code{nombres}}{character Nombre del candidato.}
#'   \item{\code{apellido_paterno}}{character Apellido paterno del candidato.}
#'   \item{\code{apellido_materno}}{character Apellido materno del candidato.}
#'   \item{\code{sexo}}{character Sexo del candidato.}
#'   \item{\code{electo}}{character Si fue electo o no, o si pasó a segunda vuelta.}
#'   \item{\code{partido}}{character Nombre del partido al que pertenece el candidato.}
#'   \item{\code{sigla_partido}}{character Sigla del partido al que pertenece el candidato.}
#'   \item{\code{votos_totales}}{double Votos totales.}
#'   \item{\code{cargo}}{character Cargo al que se postula el candidato.}
#'}
#' @source \url{https://www.servel.cl/resultados-en-excel/}
"datoselectorales"
