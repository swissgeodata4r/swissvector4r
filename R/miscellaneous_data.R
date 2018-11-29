

get_extract_zip <- function(url,file){
  temp <- tempfile()
  print(paste("Downloading data to",temp))
  download.file(url, temp)
  unzip(temp, file)
}


get_data <- function(shortname){
  
  if(shortname  == "plz_point"){
    url <- "http://data.geo.admin.ch/ch.swisstopo-vd.ortschaftenverzeichnis_plz/PLZO_CSV_LV95.zip"
    file <- "PLZO_CSV_LV95/PLZO_CSV_LV95.csv"
    get_extract_zip(url,file)
    mydata <- readr::read_delim(file,";") # replace with base R?
    unlink(temp)
    mydata <- janitor::clean_names(mydata)                             # replace with base R?
    plz <- sf::st_as_sf(mydata,coords = c("e","n"),crs = 2056,remove = F)
    plz
  } else {stop(paste("We have no data matching this name:",shortname))}
}








