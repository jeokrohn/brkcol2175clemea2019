# BRKCOL-2175 at Cisco Live Barcelona 2019

This repository contains all reference material for above session

## Folder: Notebook
This folder contains the Jupyter notebooks used for the demos.

## Live Jupyter demo environment

To get a live environment (Jupyter server with the demo notebooks) you can run the following command from the main directory:

```
docker build -t brkcol2175clemea2019 .
```

The created image is called `brkcol2175clemea2019`.

To start the notebook server execute this command:
```
docker run -it --rm --name jupyter -p 8888:8888 brkcol2175clemea2019
```

Where:
> -it : requests an interactive console

> --rm : makes sure that the docker container that gets created will be automatically removed when execution finishes

> --name jupyter : sets the name for the running container.

> -p 8888:8888 : maps port 8888 of the local host to port 8888 of the container; required to access the notebook server. If port 8888 on your local system is not available then use a different port; -p 8889:8888 for example maps local port 8889 to port 8888 of the container.

> brkcol2175clemea2019 : is the name of the image to run

That should give you an output similar to this:
```
[I 06:55:10.156 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[W 06:55:10.213 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
[I 06:55:10.226 NotebookApp] JupyterLab alpha preview extension loaded from /opt/conda/lib/python3.5/site-packages/jupyterlab
[I 06:55:10.230 NotebookApp] Serving notebooks from local directory: /home/jovyan/work/Notebook
[I 06:55:10.230 NotebookApp] 0 active kernels 
[I 06:55:10.230 NotebookApp] The Jupyter Notebook is running at: http://[all ip addresses on your system]:8888/
[I 06:55:10.230 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).

```
Now point your browser to http://localhost:8888 and you should be able to open the live demo notebooks

The password of the notebook server is set to 'brkcol2175'.

***Have Fun!***

