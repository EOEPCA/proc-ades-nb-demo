FROM terradue/l1-binder:3.1

USER ${NB_USER}

COPY --chown=jovyan:100 . ${HOME}

RUN /opt/anaconda/bin/conda env create --file ${HOME}/environment.yml && /opt/anaconda/bin/conda clean -a -y

RUN /opt/anaconda/envs/env_eoepca/bin/python -m ipykernel install --name "EOPECA-demo"

ENV PREFIX /opt/anaconda/envs/eoepca

RUN test -f ${HOME}/.docker/postBuild && chmod +x ${HOME}/.docker/postBuild && ${HOME}/.docker/postBuild || exit 0

WORKDIR ${HOME}

ENTRYPOINT [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--notebook-dir", "/home/jovyan", "--allow-root", "--NotebookApp.token=''" ]
