FROM python:3.11-bookworm
COPY requirements.txt ./
COPY requirements-more.txt ./
RUN /bin/bash -c set -eux; \
    apt-get update; apt-get install -y --no-install-recommends build-essential patchelf python3-dev ccache; rm -rf /var/lib/apt/lists/*; \
    pip install scons==4.9.0; \
    pip install -r requirements.txt; pip install -r requirements-more.txt