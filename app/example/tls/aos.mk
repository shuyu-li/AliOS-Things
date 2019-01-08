NAME := tls_client

$(NAME)_MBINS_TYPE := app
$(NAME)_VERSION := 1.0.0
$(NAME)_SUMMARY := TLS client example

DTLS ?= $(TLS_CLIENT_CONFIG_DTLS_ENABLED)

$(NAME)_SOURCES     := tls_client.c

ifeq ($(DTLS), y)
$(NAME)_DEFINES     += DTLS_ENABLED
$(NAME)_SOURCES     += dtls_client.c
endif

$(NAME)_COMPONENTS  := mbedtls cli alicrypto netmgr

GLOBAL_INCLUDES += ./
