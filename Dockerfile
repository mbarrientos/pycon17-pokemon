FROM jupyter/scipy-notebook
USER root
RUN apt-get update && apt-get install -y graphviz python-pydot
USER jovyan
ADD requirements.txt .
RUN pip install -r requirements.txt
