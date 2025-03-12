FROM python:3.11.11-bookworm
COPY requirements-bookworm.txt ./requirements.txt
RUN /bin/sh -c set -eux; \
    apt-get update; apt-get install -y --no-install-recommends patchelf; rm -rf /var/lib/apt/lists/*; \
    pip install numpy==2.2.3 --config-settings="--buildtype=release" --no-binary numpy; \
    pip install --no-cache-dir scons==4.9.0; pip install --no-cache-dir -r requirements.txt