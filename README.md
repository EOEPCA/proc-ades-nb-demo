# EOEPCA Processing demonstration using a Jupyter notebook

## Setting-up the demonstration

Clone this repo and use docker-compose to build the docker image:

```bash
git clone https://github.com/EOEPCA/proc-ades-nb-demo
cd proc-ades-nb-demo
docker-compose build
```

The start the service with:

```bash
docker-compose up
```

Open a browser tab on the address 0.0.0.0:9005 or 127.0.0.1:9005 to access the JupyterLab instance

## Running the demonstration

Provide the authentication token when requested.

Execute the cells one after the other.