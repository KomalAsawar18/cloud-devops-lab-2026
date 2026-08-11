FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y \
        docker.io \
        curl \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/lib/docker/cli-plugins && \
    curl -SL \
    https://github.com/docker/compose/releases/download/v2.39.2/docker-compose-linux-x86_64 \
    -o /usr/local/lib/docker/cli-plugins/docker-compose && \
    chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

ARG DOCKER_GID=118

RUN groupdel docker 2>/dev/null || true && \
    groupadd -g ${DOCKER_GID} docker && \
    usermod -aG docker jenkins

USER jenkins