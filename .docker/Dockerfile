FROM terradue/l1-binder:3.1

USER ${NB_USER}

COPY --chown=${NB_USER}:${NB_GID} . ${HOME}

RUN /opt/anaconda/bin/conda env create --file ${HOME}/environment.yml && /opt/anaconda/bin/conda clean -a -y

RUN /opt/anaconda/envs/env_eoepca/bin/python -m ipykernel install --name "EOPECA-demo"

ENV PREFIX /opt/anaconda/envs/eoepca

RUN test -f ${HOME}/.docker/postBuild && chmod +x ${HOME}/.docker/postBuild && ${HOME}/.docker/postBuild || exit 0

WORKDIR ${HOME}
