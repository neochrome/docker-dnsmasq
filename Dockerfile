ARG ALPINE_VERSION=3.11
ARG DNSMASQ_VERSION=2.80-r5

FROM alpine:$ALPINE_VERSION

LABEL \
	maintainer="johan@stenqvist.net" \
	description="Dnsmasq."

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]

ARG DNSMASQ_VERSION
RUN apk add \
	"dnsmasq=$DNSMASQ_VERSION"
LABEL dnsmasq.version="$DNSMASQ_VERSION"
