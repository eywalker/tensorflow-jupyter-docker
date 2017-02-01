# Build Tensorflow with support cuDNN v5
ARG TF_TAG=v0.12.1
FROM eywalker/tensorflow:${TF_TAG}
MAINTAINER Edgar Y. Walker <edgar.walker@gmail.com>

EXPOSE 8888

# Hack to deal with weird bug that prevents running `jupyter notebook` directly
# from Docker ENTRYPOINT or CMD.
# Use dumb shell script that runs `jupyter notebook` :(
# https://github.com/ipython/ipython/issues/7062
RUN mkdir -p /scripts
ADD ./run_jupyter.sh /scripts/

# Add Jupyter Notebook config
ADD ./jupyter_notebook_config.py /root/.jupyter/

WORKDIR /notebooks

# By default start running jupyter notebook and tensorboard
ENTRYPOINT ["/scripts/run_jupyter.sh"]
