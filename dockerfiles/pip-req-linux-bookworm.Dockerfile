FROM python:3.11.11-bookworm
COPY requirements-bookworm.txt ./requirements.txt
COPY bookworm-armv7-whl/ whl/
RUN /bin/bash -c set -eux; \
    apt-get update; apt-get install -y --no-install-recommends patchelf; rm -rf /var/lib/apt/lists/*; \
    pip install --find-links=whl scons==4.9.0; \
    pip install --find-links=whl -r requirements.txt