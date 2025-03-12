FROM dr34m/python-gcc6:3.11.9
COPY requirements.txt ./
RUN /bin/sh -c set -eux; apt-get update; apt-get install -y patchelf; pip install --no-cache-dir scons==4.9.0; \
    pip install --upgrade certifi; export SSL_CERT_FILE=$(python -m certifi); \
    pip install --no-cache-dir -r requirements.txt