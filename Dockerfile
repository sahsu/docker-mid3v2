FROM alpine:latest

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip && \
	pip install --upgrade mutagen && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

WORKDIR /usr/bin/
ENTRYPOINT ["mid3v2"]
