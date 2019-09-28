# Brainrex API Explorer
#
# Welcome to the Brainrex API explorer, we make analytics tools for crypto and blockchain. Our currently propiertary models offer sentiment analysis, market making, blockchain monitoring and face-id verification. This AI models can be consumed from this API. We also offer integrations to open data and propietary data providers, as well as free test data we collect. There is a collection of data transformation tools. Join our Telegram group to get the latest news and ask questions [https://t.me/brainrex, #brainrex](https://t.me/brainrex). More about Brainrex at [https://brainrex.com](http://brainrex.com). Full Documentation can be found at [https://brainrexapi.github.io/docs](https://brainrexapi.github.io/docs)
#
# OpenAPI spec version: 0.1.1
# Contact: support@brainrex.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse200 Class
#'
#' @field ename 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse200 <- R6::R6Class(
  'InlineResponse200',
  public = list(
    `ename` = NULL,
    initialize = function(`ename`){
      if (!missing(`ename`)) {
        stopifnot(is.character(`ename`), length(`ename`) == 1)
        self$`ename` <- `ename`
      }
    },
    toJSON = function() {
      InlineResponse200Object <- list()
      if (!is.null(self$`ename`)) {
        InlineResponse200Object[['ename']] <- self$`ename`
      }

      InlineResponse200Object
    },
    fromJSON = function(InlineResponse200Json) {
      InlineResponse200Object <- jsonlite::fromJSON(InlineResponse200Json)
      if (!is.null(InlineResponse200Object$`ename`)) {
        self$`ename` <- InlineResponse200Object$`ename`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "ename": %s
        }',
        self$`ename`
      )
    },
    fromJSONString = function(InlineResponse200Json) {
      InlineResponse200Object <- jsonlite::fromJSON(InlineResponse200Json)
      self$`ename` <- InlineResponse200Object$`ename`
    }
  )
)
