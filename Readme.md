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
