library(tidyverse)
library(spotifyr)

# https://developer.spotify.com/documentation/web-api/reference/#/
access_token <- get_spotify_access_token()

get.spotify.album.id <- function(x){
  str_sub(x, 32)
}

# get_my_top_artists_or_tracks(type = 'artists', time_range = 'long_term', limit = 5) %>%
# select(name, genres) %>%
#   rowwise %>%
#   mutate(genres = paste(genres, collapse = ', ')) %>%
#   ungroup %>%
#   kable()

dta <- readxl::read_excel("audio-team.xlsx")

albums <- dta %>% 
  mutate(best.album = get.spotify.album.id(`best album spotify`)) %>% 
  mutate(favourite.album = get.spotify.album.id(`favourite album spotify`)) %>% 
  select(`best album spotify`, best.album, `favourite album spotify`, favourite.album)





