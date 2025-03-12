FROM dr34m/python-self:pip-req-bookworm
COPY requirements-bookworm-next.txt ./requirements.txt
RUN /bin/sh -c set -eux; pip install --no-cache-dir -r requirements.txt