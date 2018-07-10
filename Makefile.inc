CD           = cd
ECHO         = echo
DOCKER       = docker
BRO_VER      = 2.5.4
BUILD_ARG    = --build-arg
BV           = BRO_VER=$(BRO_VER)
BBV          = $(BUILD_ARG) $(BV)
BUILD_ARGS   = $(BBV)
