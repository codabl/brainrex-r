# Brainrex API Explorer
#
# Welcome to the Brainrex API explorer, we make analytics tools for crypto and blockchain. Our currently propiertary models offer sentiment analysis, market making, blockchain monitoring and face-id verification. This AI models can be consumed from this API. We also offer integrations to open data and propietary data providers, as well as free test data we collect. There is a collection of data transformation tools. Join our Telegram group to get the latest news and ask questions [https://t.me/brainrex, #brainrex](https://t.me/brainrex). More about Brainrex at [https://brainrex.com](http://brainrex.com). Full Documentation can be found at [https://brainrexapi.github.io/docs](https://brainrexapi.github.io/docs)
#
# OpenAPI spec version: 0.1.1
# Contact: support@brainrex.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiClient Class
#'
#' Generic API client for Swagger client library builds.
#' Swagger generic API client. This client handles the client-
#' server communication, and is invariant across implementations. Specifics of
#' the methods and models for each application are generated from the Swagger
#' templates.
#'
#' NOTE: This class is auto generated by the swagger code generator program.
#' Ref: https://github.com/swagger-api/swagger-codegen
#' Do not edit the class manually.
#'
#' @export
ApiClient  <- R6::R6Class(
  'ApiClient',
  public = list(
    basePath = "https://brainrexapi.appspot.com:5000/api",
    configuration = NULL,
    userAgent = NULL,
    defaultHeaders = NULL,
    initialize = function(basePath, configuration, defaultHeaders){
        if (!missing(basePath)) {
            self$basePath <- basePath
        }

        if (!missing(configuration)) {
            self$configuration <- configuration
        }

        if (!missing(defaultHeaders)) {
            self$defaultHeaders <- defaultHeaders
        }

        self$`userAgent` <- 'Swagger-Codegen/1.0.0/r'
    },
    callApi = function(url, method, queryParams, headerParams, body, ...){
        headers <- httr::add_headers(headerParams)

        if (method == "GET") {
            httr::GET(url, queryParams, headers, ...)
        }
        else if (method == "POST") {
            httr::POST(url, queryParams, headers, body = body, ...)
        }
        else if (method == "PUT") {
            httr::PUT(url, queryParams, headers, body = body, ...)
        }
        else if (method == "PATCH") {
            httr::PATCH(url, queryParams, headers, body = body, ...)
        }
        else if (method == "HEAD") {
            httr::HEAD(url, queryParams, headers, ...)
        }
        else if (method == "DELETE") {
            httr::DELETE(url, queryParams, headers, ...)
        }
        else {
            stop("http method must be `GET`, `HEAD`, `OPTIONS`, `POST`, `PATCH`, `PUT` or `DELETE`.")
        }
    }
  )
)