FROM continuumio/miniconda3

WORKDIR /app

ADD environment.yml /app/environment.yml
RUN conda env create -f /app/environment.yml

SHELL ["conda", "run", "-n", "env", "/bin/bash", "-c"]

ENTRYPOINT ["conda", "run", "-n", "env", "python3"]