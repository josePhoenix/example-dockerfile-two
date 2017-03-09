FROM andrewosh/binder-base

MAINTAINER Joseph Long <help@stsci.edu>

# Steps to be performed by root:
#
# USER root
#

USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt
