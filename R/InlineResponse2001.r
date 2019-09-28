# Brainrex API Explorer
#
# Welcome to the Brainrex API explorer, we make analytics tools for crypto and blockchain. Our currently propiertary models offer sentiment analysis, market making, blockchain monitoring and face-id verification. This AI models can be consumed from this API. We also offer integrations to open data and propietary data providers, as well as free test data we collect. There is a collection of data transformation tools. Join our Telegram group to get the latest news and ask questions [https://t.me/brainrex, #brainrex](https://t.me/brainrex). More about Brainrex at [https://brainrex.com](http://brainrex.com). Full Documentation can be found at [https://brainrexapi.github.io/docs](https://brainrexapi.github.io/docs)
#
# OpenAPI spec version: 0.1.1
# Contact: support@brainrex.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse2001 Class
#'
#' @field currencypair 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse2001 <- R6::R6Class(
  'InlineResponse2001',
  public = list(
    `currencypair` = NULL,
    initialize = function(`currencypair`){
      if (!missing(`currencypair`)) {
        stopifnot(is.character(`currencypair`), length(`currencypair`) == 1)
        self$`currencypair` <- `currencypair`
      }
    },
    toJSON = function() {
      InlineResponse2001Object <- list()
      if (!is.null(self$`currencypair`)) {
        InlineResponse2001Object[['currencypair']] <- self$`currencypair`
      }

      InlineResponse2001Object
    },
    fromJSON = function(InlineResponse2001Json) {
      InlineResponse2001Object <- jsonlite::fromJSON(InlineResponse2001Json)
      if (!is.null(InlineResponse2001Object$`currencypair`)) {
        self$`currencypair` <- InlineResponse2001Object$`currencypair`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "currencypair": %s
        }',
        self$`currencypair`
      )
    },
    fromJSONString = function(InlineResponse2001Json) {
      InlineResponse2001Object <- jsonlite::fromJSON(InlineResponse2001Json)
      self$`currencypair` <- InlineResponse2001Object$`currencypair`
    }
  )
)
