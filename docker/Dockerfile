FROM jupyter/base-notebook

ENV HOME=/home/$NB_USER

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN pip install papermill
RUN python -c "import black; black.cache.CACHE_DIR.mkdir(parents=True, exist_ok=True)"

RUN cd $HOME \
    && git clone https://github.com/marjo-luc/hello-world.git

RUN cd hello-world

USER $NB_USER

WORKDIR $HOME/hello-world
RUN echo $PWD

CMD ["/bin/bash"]
#ENTRYPOINT ["run.sh", "hello-world.ipynb", "output.ipynb", "-Sinput_1", "Hello Universe"]
#CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
