FROM mambaorg/micromamba:0.25.1

WORKDIR /app

COPY environment.yml /tmp/environment.yml

RUN micromamba install -y -n base -f /tmp/environment.yml && \
    micromamba clean --all --yes