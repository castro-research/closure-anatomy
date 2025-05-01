FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    curl \
    ruby \
    golang \
    clang \
    libncurses5-dev \
    libicu-dev \
    libxml2-dev \
    libsqlite3-dev \
    git \
    xz-utils \
    && apt-get clean && \
    curl -fsSL https://deno.land/x/install/install.sh | sh

ENV PATH="/root/.deno/bin:$PATH"

WORKDIR /code
COPY . .

CMD ["bash", "run_all.sh"]
