FROM jupyter/datascience-notebook
MAINTAINER Alexandr Marchenko <marchenko.alexandr@gmail.com>

EXPOSE 8888 8888
VOLUME /home/jovyan/work

# RUN conda install --quiet --yes \
#     'nltk' \
#     'jupyterhub=0.7.*' \
#     'jupyterlab=0.24.*' \
#     && conda clean -tipsy

# RUN pip install pymorphy2

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# RUN python -m nltk.downloader all
