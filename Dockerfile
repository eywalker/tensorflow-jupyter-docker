# Build Tensorflow with support cuDNN v5
FROM eywalker/tensorflow
MAINTAINER Edgar Y. Walker <edgar.walker@gmail.com>

# Export port for TensorBoard
EXPOSE 6006

# Export port for Jupyter Notebook
EXPOSE 8888

# Hack to deal with weird bug that prevents running `jupyter notebook` directly
# from Docker ENTRYPOINT or CMD.
# Use dumb shell script that runs `jupyter notebook` :(
# https://github.com/ipython/ipython/issues/7062
RUN mkdir /scripts
ADD ./run_tensorflow.sh /scripts/

# Add Jupyter Notebook config
ADD ./jupyter_notebook_config.py /root/.jupyter/

WORKDIR /notebooks

# BY default start running jupyter notebook and tensorboard
ENTRYPOINT ["/scripts/run_tensorflow.sh"]