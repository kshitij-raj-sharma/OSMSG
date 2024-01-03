ARG PYTHON_VERSION=3.10

FROM docker.io/python:${PYTHON_VERSION}-slim-bookworm

RUN apt-get update -y && apt-get autoremove -y && \
    apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    gdal-bin \
    libgdal-dev \
    libboost-dev \
    python3-gdal \
    osmium-tool

ENV PATH="/osmium/bin:${PATH}"

RUN pip install osmsg

CMD ["/bin/bash"]
