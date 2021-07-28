#FROM jupyter/base-notebook
FROM cae-artifactory.jpl.nasa.gov:16001/gov/nasa/jpl/nisar/sds/pcm/nisar_ade:r1.4

ENV HOME=/home/$NB_USER

# Install stuff
USER root
RUN cd $HOME \
    && git clone https://github.com/marjo-luc/hello-world.git
RUN touch hello-world/output.ipynb
RUN chown -R $NB_USER hello-world/output.ipynb

USER $NB_USER

#ENTRYPOINT ["bash"]
CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
