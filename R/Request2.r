# Brainrex API Explorer
#
# Welcome to the Brainrex API explorer, we make analytics tools for crypto and blockchain. Our currently propiertary models offer sentiment analysis, market making, blockchain monitoring and face-id verification. This AI models can be consumed from this API. We also offer integrations to open data and propietary data providers, as well as free test data we collect. There is a collection of data transformation tools. Join our Telegram group to get the latest news and ask questions [https://t.me/brainrex, #brainrex](https://t.me/brainrex). More about Brainrex at [https://brainrex.com](http://brainrex.com). Full Documentation can be found at [https://brainrexapi.github.io/docs](https://brainrexapi.github.io/docs)
#
# OpenAPI spec version: 0.1.1
# Contact: support@brainrex.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Request2 Class
#'
#' @field exchange 
#' @field market 
#' @field data_format 
#' @field orient 
#' @field candle_size 
#' @field start_date 
#' @field end_date 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Request2 <- R6::R6Class(
  'Request2',
  public = list(
    `exchange` = NULL,
    `market` = NULL,
    `data_format` = NULL,
    `orient` = NULL,
    `candle_size` = NULL,
    `start_date` = NULL,
    `end_date` = NULL,
    initialize = function(`exchange`, `market`, `data_format`, `orient`, `candle_size`, `start_date`, `end_date`){
      if (!missing(`exchange`)) {
        stopifnot(is.character(`exchange`), length(`exchange`) == 1)
        self$`exchange` <- `exchange`
      }
      if (!missing(`market`)) {
        stopifnot(is.character(`market`), length(`market`) == 1)
        self$`market` <- `market`
      }
      if (!missing(`data_format`)) {
        stopifnot(is.character(`data_format`), length(`data_format`) == 1)
        self$`data_format` <- `data_format`
      }
      if (!missing(`orient`)) {
        stopifnot(is.character(`orient`), length(`orient`) == 1)
        self$`orient` <- `orient`
      }
      if (!missing(`candle_size`)) {
        stopifnot(is.character(`candle_size`), length(`candle_size`) == 1)
        self$`candle_size` <- `candle_size`
      }
      if (!missing(`start_date`)) {
        stopifnot(is.character(`start_date`), length(`start_date`) == 1)
        self$`start_date` <- `start_date`
      }
      if (!missing(`end_date`)) {
        stopifnot(is.character(`end_date`), length(`end_date`) == 1)
        self$`end_date` <- `end_date`
      }
    },
    toJSON = function() {
      Request2Object <- list()
      if (!is.null(self$`exchange`)) {
        Request2Object[['exchange']] <- self$`exchange`
      }
      if (!is.null(self$`market`)) {
        Request2Object[['market']] <- self$`market`
      }
      if (!is.null(self$`data_format`)) {
        Request2Object[['data_format']] <- self$`data_format`
      }
      if (!is.null(self$`orient`)) {
        Request2Object[['orient']] <- self$`orient`
      }
      if (!is.null(self$`candle_size`)) {
        Request2Object[['candle_size']] <- self$`candle_size`
      }
      if (!is.null(self$`start_date`)) {
        Request2Object[['start_date']] <- self$`start_date`
      }
      if (!is.null(self$`end_date`)) {
        Request2Object[['end_date']] <- self$`end_date`
      }

      Request2Object
    },
    fromJSON = function(Request2Json) {
      Request2Object <- jsonlite::fromJSON(Request2Json)
      if (!is.null(Request2Object$`exchange`)) {
        self$`exchange` <- Request2Object$`exchange`
      }
      if (!is.null(Request2Object$`market`)) {
        self$`market` <- Request2Object$`market`
      }
      if (!is.null(Request2Object$`data_format`)) {
        self$`data_format` <- Request2Object$`data_format`
      }
      if (!is.null(Request2Object$`orient`)) {
        self$`orient` <- Request2Object$`orient`
      }
      if (!is.null(Request2Object$`candle_size`)) {
        self$`candle_size` <- Request2Object$`candle_size`
      }
      if (!is.null(Request2Object$`start_date`)) {
        self$`start_date` <- Request2Object$`start_date`
      }
      if (!is.null(Request2Object$`end_date`)) {
        self$`end_date` <- Request2Object$`end_date`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "exchange": %s,
           "market": %s,
           "data_format": %s,
           "orient": %s,
           "candle_size": %s,
           "start_date": %s,
           "end_date": %s
        }',
        self$`exchange`,
        self$`market`,
        self$`data_format`,
        self$`orient`,
        self$`candle_size`,
        self$`start_date`,
        self$`end_date`
      )
    },
    fromJSONString = function(Request2Json) {
      Request2Object <- jsonlite::fromJSON(Request2Json)
      self$`exchange` <- Request2Object$`exchange`
      self$`market` <- Request2Object$`market`
      self$`data_format` <- Request2Object$`data_format`
      self$`orient` <- Request2Object$`orient`
      self$`candle_size` <- Request2Object$`candle_size`
      self$`start_date` <- Request2Object$`start_date`
      self$`end_date` <- Request2Object$`end_date`
    }
  )
)
