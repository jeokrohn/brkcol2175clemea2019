FROM jupyter/base-notebook

ADD requirements.txt .

USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends unzip \
    && wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
    && unzip ngrok-stable-linux-amd64.zip \
    && install -v -D ngrok /bin/ngrok \
    && rm -f ngrok-stable-linux-amd64.zip ngrok \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && rm -f requirements.txt

ADD Notebook/*.ipynb work/Notebook/
ADD Notebook/*.pdf work/Notebook/

ADD jupyter_notebook_config.py /home/jovyan/.jupyter/
RUN chown -R jovyan:users .

USER jovyan

EXPOSE 8888 4040

