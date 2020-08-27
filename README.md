[![bkocis](https://circleci.com/gh/bkocis/CloudDevOps-ND-Operationalize-ML-Microservice.svg?style=svg)](https://app.circleci.com/pipelines/github/bkocis/CloudDevOps-ND-Operationalize-ML-Microservice)


### Description

The goal of the project is to operationalize a Machine Learning application as a microservice using Docker and Kubernetes.
A pre-trained model for predicting housing prices in Boston is used (more about the data initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

A Python flask application serves out predictions (inference) about housing prices through API calls. The code is packaged into a docker container and deployed to AWS. Next to docker, a kubernetes cluster is also defined and deployed.
Additionally, CI/CD principles are utilizes, such as linting the python code, as well as the docker container and deployment testing via CircleCI SaaS solution.


Steps:

* Create a virtualenv and activate it

* Run `make install` to install the necessary dependencies

* Test your project code using linting

    - in the `Makefile` the linting executed via pylint (for the Flask app) and via hadolint for the Dockerfile
    
* Complete a Dockerfile to containerize this application

    - in the Dokcerfile the initail container is defined and the files of the applications are copied
    - port 80 is expoded 
    - CMD executes the program upon creation of the container

* Deploy your containerized application using Docker and make a prediction
 
    - the docker image is build `docker build --tag=mlapp .``
    - for a local prediction the app is run from inside the docker `docker run -p 8000:5001 mlapp`
    - The container is uploaded to AWS ECR and the application (mlapp) is reachable via the EC2 public address
    - The container is also uploaded to Docker Hub, for the next step of running the Docker with Kubernetes
    - steps are in `run_docker.sh`, output is captured in the `docker_out.txt`

* Configure Kubernetes and create a Kubernetes cluster
 
    - the kubectl and minicube have been installed in the cloud9 environment 

* Deploy a container using Kubernetes and make a prediction

    - start the kubernetes cluster locally using minicube 
    - define the path to the docker image on the Docker Hub
    - run kubectl for from the image from the Docker Hub
    - forward the port to the container and execute the `make_prediction.sh`
    - steps are in `run_kubernetes.sh`, output is captured in `kubernetes_out.txt`

* Upload a complete Github repo with CircleCI to indicate that your code has been tested
 
    - the project is uploaded to github and connected to circeCI




---




### Running the Flask application `mlapp.py`

1. Standalone:  `python mlapp.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


