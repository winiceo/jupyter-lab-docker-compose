FROM continuumio/anaconda3:latest

RUN set -x \
        && apt-get update -y \
        && pip install --upgrade pip \
        && pip install mglearn \
	    && pip uninstall urllib3 -y \
		&& pip uninstall  chardet -y && pip install requests \
		&& conda install jupyter -y --quiet
 


WORKDIR /workspace
CMD jupyter-lab --no-browser \
    --port=8888 --ip=0.0.0.0 --allow-root \
    --NotebookApp.password=${ACCESS_TOKEN}
 