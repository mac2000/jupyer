FROM jupyter/datascience-notebook
MAINTAINER Alexandr Marchenko <marchenko.alexandr@gmail.com>

EXPOSE 8888 8888
VOLUME /home/jovyan/work

RUN pip install nltk
RUN python -m nltk.downloader all

USER root
RUN apt-get update -qq && apt-get install -y unixodbc unixodbc-dev freetds-dev freetds-bin
USER jovyan

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt