package architecture.api.governance

deny[msg] {
    input.api.visibility == "public"
    input.api.gateway != "apiconnect"
    msg := "Las APIs públicas deben publicarse mediante IBM API Connect."
}

deny[msg] {
    input.api.visibility == "public"
    not input.api.openapi
    msg := "La especificación OpenAPI es obligatoria."
}

deny[msg] {
    input.api.visibility == "public"
    not input.api.owner
    msg := "El propietario funcional de la API es obligatorio."
}

deny[msg] {
    input.api.visibility == "public"
    not input.api.oauth2
    msg := "Las APIs públicas deben implementar OAuth2."
}

deny[msg] {
    input.api.visibility == "public"
    not input.api.instana_monitoring
    msg := "La observabilidad mediante Instana es obligatoria."
}

deny[msg] {
    input.api.tls_version < 1.2
    msg := "La versión mínima soportada de TLS es 1.2."
}
