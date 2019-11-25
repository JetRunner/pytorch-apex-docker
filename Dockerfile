FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel
MAINTAINER Canwen Xu <canwenxu@outlook.com>

RUN apt-get update && apt-get install -y git libsndfile-dev && apt-get clean
RUN git clone https://github.com/nvidia/apex /apex && \
  cd /apex && \
  pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .
  
