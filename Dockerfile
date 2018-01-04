FROM archlinux/base

LABEL maintainer="Manuel Verriez <mverriez at yahoo dot fr>"

RUN yes | pacman -Syu

RUN yes | pacman -S 	python-tensorflow \
			python-numpy \
			tensorflow \
			jupyter-notebook mathjax \
			python-pip \
			python-scipy \
			python-yaml \
			python-h5py \
			hdf5 \
			graphviz \
			python-matplotlib libglvnd \
			python-pandas \
			python-scikit-learn \
			python-seaborn \
			python-pillow

RUN pip install bokeh keras

RUN groupadd jupyter && useradd -m -g jupyter -s /bin/bash jupyter

USER jupyter

VOLUME	/home/jupyter

WORKDIR /home/jupyter

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser"]

