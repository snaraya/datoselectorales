## code to prepare `datoselectorales` dataset goes here

library(tidyverse)
library(readxl)
library(janitor)
library(stringi)
library(stringr)

prepare_data <- read_excel("data-raw/resultados_elecciones_presidenciales_ce_1989_2017_Chile.xlsx")

names(prepare_data)

prepare_data <- prepare_data %>%
  clean_names() %>%
  select(tipo_de_eleccion, cargo, fecha_de_eleccion, ano_de_eleccion, periodo, votacion_presidencial,
         id_region, region, provincia, nombre_provincia, comuna, sexo_mesa, candidato_a, nombres, apellido_paterno,
         apellido_materno, sexo, electo_a, partido, sigla_partido, votos_totales) %>%
  rename(candidato = candidato_a, electo = electo_a)

prepare_data <- prepare_data %>%
  mutate(sigla_partido = gsub('PDC', 'DC', sigla_partido),
         sigla_partido = gsub('INDEP', 'IND', sigla_partido),
         sigla_partido = gsub('PCCH', 'PC', sigla_partido))

prepare_data %>%
  count(sigla_partido)

prepare_data <- prepare_data %>%
  mutate_at(vars(tipo_de_eleccion, cargo, votacion_presidencial, region, provincia, comuna, sexo_mesa, candidato, nombres, apellido_materno, apellido_paterno, sexo_mesa, sexo, electo, partido, sigla_partido), ~stri_trans_general(., "latin-ascii")) %>%
  mutate_at(vars(tipo_de_eleccion, cargo, votacion_presidencial, region, provincia, comuna, sexo_mesa, candidato, nombres, apellido_materno, apellido_paterno, sexo_mesa, sexo, electo, partido, sigla_partido), ~str_to_lower(.))

prepare_data <- prepare_data %>% select(!cargo, !periodo)

datoselectorales <- prepare_data

usethis::use_data(datoselectorales, overwrite = TRUE)
