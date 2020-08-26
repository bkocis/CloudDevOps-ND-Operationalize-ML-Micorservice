title 


### Description

The goal of the project is to operationalize a Machine Learning application as a microservice using Docker and Kubernetes.
A pre-trained model for predicting housing prices in Boston is used (more about the data initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). A Python flask application serves out predictions (inference) about housing prices through API calls. The code is packaged into a docker container and deployed to AWS. Next to docker, a kubernetes cluster is also defined and deployed.
Additionally, CI/CD principles are utilizes, such as linting the python code, as well as the docker container and deployment testing via CircleCI SaaS solution.


* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested



---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `mlapp.py`

1. Standalone:  `python mlapp.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
