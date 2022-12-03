FROM alpine:3.15
LABEL maintainer="dev@monkeysas.com"
LABEL version="1.1.0"

RUN set -ex; \
  \
  apk add -u bash \
  openssl \
  curl \
  grep \
  git \
  go \
  libc-dev \
  make

RUN mkdir -p /app
RUN echo "export MONGO_URL=\`cat \${MONGO_URL_FILE}\`" > /entrypoint.sh
RUN echo "export POSTGRES_URL=\`cat \${POSTGRES_URL_FILE}\`" >> /entrypoint.sh
RUN echo "sleep 20" >> /entrypoint.sh
RUN echo "/app/bin/moresql -\${MODE:-tail} -config-file=\${CONFIG_FILE:-/etc/moresql.json}" >> /entrypoint.sh

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
COPY cmds/ ./cmds/
COPY bin/ ./bin/
COPY Makefile ./
COPY *.go ./
RUN make build

ENTRYPOINT [ "/bin/bash", "/entrypoint.sh" ]
