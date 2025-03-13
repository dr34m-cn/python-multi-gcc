FROM dr34m/python-gcc6:3.11.9
COPY requirements.txt ./
RUN /bin/sh -c set -eux; pip install scons==4.9.0; \
    pip install -r requirements.txt; pip install moviepy==1.0.3 opencv-python==4.10.0.84