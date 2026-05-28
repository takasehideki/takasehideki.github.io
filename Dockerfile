FROM node:22-trixie-slim

ARG GO_VERSION=1.24.4
ARG HUGO_VERSION=0.162.0
ARG PNPM_VERSION=10.14.0

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  git \
  tar \
  && rm -rf /var/lib/apt/lists/*

RUN arch="$(dpkg --print-architecture)" \
  && case "$arch" in \
  amd64) go_arch='amd64'; hugo_arch='amd64' ;; \
  arm64) go_arch='arm64'; hugo_arch='arm64' ;; \
  *) echo "Unsupported architecture: $arch" >&2; exit 1 ;; \
  esac \
  && curl -fsSL "https://go.dev/dl/go${GO_VERSION}.linux-${go_arch}.tar.gz" -o /tmp/go.tgz \
  && rm -rf /usr/local/go \
  && tar -C /usr/local -xzf /tmp/go.tgz \
  && rm /tmp/go.tgz \
  && curl -fsSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${hugo_arch}.tar.gz" -o /tmp/hugo.tgz \
  && tar -C /usr/local/bin -xzf /tmp/hugo.tgz hugo \
  && rm /tmp/hugo.tgz

ENV PATH="/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

RUN npm install -g "pnpm@${PNPM_VERSION}" hugoblox sass

WORKDIR /workspace

CMD ["bash"]