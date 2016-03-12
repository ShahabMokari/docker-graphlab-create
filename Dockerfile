FROM continuumio/anaconda

MAINTAINER Adam Best <abest@utilitas.io>

# Create a new conda environment with Python 2.7.x
RUN conda create -y -n dato-env python=2.7 anaconda

# Activate the conda environment
RUN /bin/bash -c "source activate dato-env"

# Install my licensed copy of Graphlab Create
COPY GraphLab-Create-License.tar.gz /tmp/GraphLab-Create-License.tar.gz
RUN pip install --upgrade --no-cache-dir /tmp/GraphLab-Create-License.tar.gz

# Install or updates IPython and IPython Notebook
RUN conda update ipython ipython-notebook

WORKDIR /notebooks

ADD notebook.sh /
RUN chmod +x /notebook.sh

CMD ["/notebook.sh"]


