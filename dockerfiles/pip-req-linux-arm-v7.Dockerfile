FROM dr34m/python-gcc6:3.11.9
COPY requirements.txt ./
COPY packages/armv7-debian/ whl/
RUN /bin/sh -c set -eux; \
    pip install --find-links=whl scons==4.9.0; \
    pip install --find-links=whl -r requirements.txt