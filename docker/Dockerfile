FROM jupyter/base-notebook

ENV HOME=/home/$NB_USER

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN pip install papermill

USER $NB_USER

ADD https://api.github.com/repos/pymonger/hello-world/git/refs/heads/main version.json

RUN cd $HOME \
    && git clone https://github.com/pymonger/hello-world.git

RUN cd hello-world

RUN python -c "import black; black.cache.CACHE_DIR.mkdir(parents=True, exist_ok=True)"

WORKDIR $HOME/hello-world

#ENTRYPOINT ["./run.sh", "hello-world.ipynb", "output.ipynb", "-Sinput_1", "Universe"]
CMD ["/bin/bash"]
