FROM alpine:3.24.3

# GoReleaser (dockers_v2) puts each platform's binary under <os>/<arch>/.
ARG TARGETPLATFORM
COPY $TARGETPLATFORM/php-fpm_exporter /

EXPOSE     9253
ENTRYPOINT [ "/php-fpm_exporter", "server" ]
