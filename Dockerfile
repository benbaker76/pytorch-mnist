FROM python:3.9-buster  AS build-env

WORKDIR /work

RUN pip3 install --upgrade pip
RUN pip3 install torch torchvision

FROM gcr.io/distroless/python3
COPY --from=build-env /work /work
COPY --from=build-env /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages

WORKDIR /work

COPY train.py /work/

ENV PYTHONPATH=/usr/local/lib/python3.9/site-packages
ENV LIBRARY_PATH=/usr/local/cuda/lib64/stubs
