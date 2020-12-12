## ----setup, include=FALSE-----------------------------------------------------
library(zipcodeR)
real_estate_data <- readr::read_csv('https://econdata.s3-us-west-2.amazonaws.com/Reports/Core/RDC_Inventory_Core_Metrics_Zip.csv', col_types = readr::cols(postal_code = readr::col_character())) %>% dplyr::filter(nchar(postal_code) == 5)
knitr::opts_chunk$set(echo = TRUE)
set.seed(1000)

## -----------------------------------------------------------------------------
search_state('NY')

## -----------------------------------------------------------------------------
nyzip <- search_state('NY')$zipcode

## -----------------------------------------------------------------------------
states <- c('NY','NJ','CT')

search_state(states)

## -----------------------------------------------------------------------------
search_county('Ocean','NJ')

## -----------------------------------------------------------------------------
search_county("ST BERNARD","LA", similar = TRUE)$zipcode

## -----------------------------------------------------------------------------
head(real_estate_data)

## -----------------------------------------------------------------------------
real_estate_data[1,]

## -----------------------------------------------------------------------------
# Get the ZIP code of the first row of data
zip_code <- real_estate_data[1,]$postal_code

# Pass the ZIP code to the reverse_zipcode() function

reverse_zipcode(zip_code)

## -----------------------------------------------------------------------------
get_tracts(zip_code)

## -----------------------------------------------------------------------------
is_zcta(zip_code)

