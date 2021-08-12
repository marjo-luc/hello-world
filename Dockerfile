FROM jupyter/base-notebook

ENV HOME=/home/$NB_USER

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN pip install papermill

RUN cd $HOME \
    && git clone https://github.com/marjo-luc/hello-world.git

USER $NB_USER

CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
