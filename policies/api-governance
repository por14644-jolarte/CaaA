package architecture.api.governance

default allow = true

#
# Regla 1
# Las APIs públicas deben utilizar API Connect
#

deny[msg] {
    input.api.visibility == "public"
    not input.api.gateway
    msg := "Las APIs públicas deben publicarse mediante IBM API Connect."
}

deny[msg] {
    input.api.visibility == "public"
    input.api.gateway != "apiconnect"
    msg := "El gateway autorizado para APIs públicas es IBM API Connect."
}
