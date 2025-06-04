FROM python:3.11-bookworm
COPY requirements.txt ./requirements.txt
RUN /bin/bash -c set -eux; \
    apt-get update; apt-get install -y --no-install-recommends patchelf; rm -rf /var/lib/apt/lists/*; \
    pip install scons==4.9.0; \
    pip install -r requirements.txt