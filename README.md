# jupyter_docker_template
Template for using jupyter notebook in docker container.

- There are: `Dockerfile`, `requirements`,  `docker-compose.yml` and `pip.conf` (optionally)
- Python libraries in `requirements` file.
- `Dockerfile` also contains enabling jupyter nbextensions. 
- Jupyter Notebook starts on port `8888` without token or password.

## How to use with docker-compose

1. Build image and start container
```
docker-compose up --build
```
2. If image already built
```
docker-compose up
```

## How to use with docker

1. Build image `jupyter_notebook`
```
docker build -t jupyter_notebook .
```
2. Run container with jupyter
```
docker run --name jupyter_notebook --rm -p 8888:8888 jupyter_notebook
```
