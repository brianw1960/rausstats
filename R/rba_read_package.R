#' raustats: An R package for accessing data and statistics from the ABS and RBA websites
#'
#' The raustats package provides structured access to all data and statistics 
#' available from the Australian Bureau of Statistics and Reserve Bank of Australia
#' website, as well as draft access to the ABS.Stat - Beta data catalogue API.
#'
#' @name raustats
#' @author Brian W
#' @keywords internal

### Function: rba_aus_stats_zip
#' @title Return RBA statistics from 2017-18 
#' @description Function to return an updated list of data tables available from the RBA website.
#' @return data in long form
#' @author Brian W

#' Write out unit tests
URL<-"https://github.com/brianw1960/rausstats/raw/main/data/rausstats.zip"
DEST<-"C:\\Temp\\rausstats_1.0.zip"



### Function: rba_search_package
#' @name rba_search_package
#' @title Returns RBA tools package needed to list of data tables from RBA website
#' @description Function to return a list of packages taken from RBA tools
#' @param pattern Character string or regular expression to be matched
#' @param series_type Character vector specifying one or more one of 'statistical tables', 'historical data' or
#'   'discontinued data'. By default, \code{series_type = 'statistical tables'}.
#' @param ignore.case 
#' @return packages from RBA tools
#' @author Brian W
#' @examples
#'  rba_datasets <- rba_search(pattern = "Liabilities and Assets");
download.file(URL,DEST)
zpkg = ("C:\\Temp\\rausstats.zip")

## Return RBA tool packages
install.packages("Rcpp")
install.packages(zpkg, repos=NULL, type="binary")

## Cleanup pacakages
file.remove(zpkg)

### Function: rausstats table
#' @name rausstats_table
#' @title Read metadata and extract table name from stats zip
#' @description Functions to extract data from rausstats.zip
#' @param files Names of one or more ABS data file
#' @return metadata table
#' @author Brian W
#' @export
library(rausstats)
rausstats::abs_cat_releases()
