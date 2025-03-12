FROM python:3.11.11-bookworm
COPY requirements.txt ./
RUN /bin/sh -c set -eux; pip install --no-cache-dir scons==4.9.0; pip install --no-cache-dir -r requirements.txt