## code to prepare `datoselectorales` dataset goes here

library(tidyverse)
library(readxl)
library(janitor)
library(stringi)
library(stringr)

#### PRESIDENCIALES ----

presidenciales <- read_excel("data-raw/resultados_elecciones_presidenciales_ce_1989_2017_Chile.xlsx")

names(presidenciales)

presidenciales <- presidenciales %>%
  clean_names() %>%
  select(tipo_de_eleccion, cargo, fecha_de_eleccion, ano_de_eleccion, periodo, votacion_presidencial,
         id_region, region, provincia, nombre_provincia, comuna, sexo_mesa, candidato_a, nombres, apellido_paterno,
         apellido_materno, sexo, electo_a, partido, sigla_partido, votos_totales) %>%
  rename(candidato = candidato_a, electo = electo_a, id_provincia = provincia, provincia = nombre_provincia)

presidenciales <- presidenciales %>%
  mutate(sigla_partido = gsub('PDC', 'DC', sigla_partido),
         sigla_partido = gsub('INDEP', 'IND', sigla_partido),
         sigla_partido = gsub('PCCH', 'PC', sigla_partido))

presidenciales %>%
  count(sigla_partido)

glimpse(presidenciales)

presidenciales <- presidenciales %>%
  mutate_if(is.character, ~stri_trans_general(., "latin-ascii")) %>%
  mutate_if(is.character, ~str_to_lower(.))

head(presidenciales)

usethis::use_data(presidenciales, overwrite = TRUE)

#### MUNICIPALES ----

alcaldes <- read_excel("data-raw/resultados_elecciones_alcaldes_ce_2004_2016.xlsx")

names(alcaldes)

alcaldes <- alcaldes %>%
  clean_names() %>%
  rename(candidato = candidato_a, electo = electo_a)

table(alcaldes$sigla_partido)

alcaldes <- alcaldes %>%
  mutate_if(is.character, ~stri_trans_general(., "latin-ascii")) %>%
  mutate_if(is.character, ~str_to_lower(.))

head(alcaldes)

usethis::use_data(alcaldes, overwrite = TRUE)

#### CONCEJALES 1992 - 2000
