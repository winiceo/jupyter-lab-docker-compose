FROM continuumio/anaconda3:latest

RUN set -x \
        && apt-get update -y \
        && pip install --upgrade pip \
        && pip install mglearn \
	    && pip uninstall urllib3 -y \
		&& pip uninstall  chardet -y && pip install requests \
		&& conda install jupyter -y --quiet
WORKDIR /opt/notebooks

EXPOSE 8888