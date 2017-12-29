# Datascience toolbox, within a Docker image

With Jupyter, python 3, TensorFlow, Keras and others popular libraries.

## What it provides

### Environment
* Python 3.6.4
* Jupyter Notebook 5.0.0

### Deep Learning
* TensorFlow 1.4.1
* Keras 2.1.2

### Machine Learning, Scientific computing
* Numpy 1.13.3
* Scikit-learn 0.19.1
* Scipy 1.0.0

### Data structures
* HDF5 1.10.1
* Pandas 0.21.0

### Visualization
* Bokeh 0.12.13
* Graphviz 2.40.1
* Matplotlib 2.1.1
* Seaborn 0.8.1

## Basic usage

Default folder used by Jupyter to store notebooks is `/home/jupyter`, inside the container. Any data (notebook, datasets, etc.) created inside the container will be available only from the container, while the container is running and will be ephemeral.

I strongly advise you to map this volume to a folder on your computer (named `<LOCAL_DIR>`).

```
docker run -v <LOCAL_DIR>:/home/jupyter -p 8888:8888 mverriez/datascience-python-toolbox
```

This command starts a container with the Jupyter server listening for HTTP connections on port 8888, protected by a generated token.


```
[I 10:39:51.685 NotebookApp] Writing notebook server cookie secret to /home/jupyter/.local/share/jupyter/runtime/notebook_cookie_secret
[I 10:39:51.881 NotebookApp] Serving notebooks from local directory: /home/jupyter
[I 10:39:51.881 NotebookApp] 0 active kernels
[I 10:39:51.881 NotebookApp] The Jupyter Notebook is running at: http://0.0.0.0:8888/?token=6a354d94975c9d5b37ea0959e22a6f3b5d5b0d646f6a9cdc
[I 10:39:51.881 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 10:39:51.881 NotebookApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://0.0.0.0:8888/?token=6a354d94975c9d5b37ea0959e22a6f3b5d5b0d646f6a9cdc
```
