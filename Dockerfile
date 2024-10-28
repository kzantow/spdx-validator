FROM openjdk:11@sha256:e81b7f317654b0f26d3993e014b04bcb29250339b11b9de41e130feecd4cd43c

ENV VERSION=1.1.8

RUN wget --no-verbose https://github.com/spdx/tools-java/releases/download/v$VERSION/tools-java-$VERSION.zip && \
	unzip tools-java-$VERSION.zip && \
	rm tools-java-$VERSION.zip

COPY run.sh /

CMD [ "/run.sh" ]
