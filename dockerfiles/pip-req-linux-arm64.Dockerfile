FROM dr34m/python-gcc6:3.11.9
COPY requirements.txt ./
COPY requirements-more.txt ./
RUN /bin/sh -c set -eux; pip install scons==4.9.0; \
    pip install -r requirements.txt
#; pip install -r requirements-more.txt