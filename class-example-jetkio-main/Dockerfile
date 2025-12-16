# Minimal Racket (8.14) + Python + Bash + SWI‑Prolog (+ flex/bison)
FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux; \
  printf 'APT::Keep-Downloaded-Packages "false";\n' > /etc/apt/apt.conf.d/99no-apt-cache; \
  echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    bash \
    ca-certificates curl gnupg \
    python3 python3-pip python3-venv \
    swi-prolog \
    build-essential pkg-config \
    flex bison libfl-dev; \
  apt-get install -y -t bookworm-backports --no-install-recommends racket; \
  ln -sf /usr/bin/python3 /usr/local/bin/python; \
  ln -sf /usr/bin/pip3    /usr/local/bin/pip; \
  apt-get clean; \
  rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /var/cache/apt/*

# Quick sanity checks (optional)
RUN racket -e '(displayln (version))' && raco help && \
    python --version && pip --version && \
    swipl --version && \
    flex --version && bison --version

ARG RACKET_VERSION=8.14
RUN raco pkg config --set catalogs \
  "https://download.racket-lang.org/releases/${RACKET_VERSION}/catalog/" \
  "https://pkgs.racket-lang.org"

ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID dev && useradd -m -u $UID -g $GID -s /bin/bash dev

USER dev
WORKDIR /lecture

CMD ["/bin/bash"]