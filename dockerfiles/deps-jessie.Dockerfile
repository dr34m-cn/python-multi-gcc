FROM buildpack-deps:jessie
COPY ../sources-jessie.list /etc/apt/sources.list
COPY ../openssl.tar.gz openssl.tar.gz
RUN set -ex; apt-get update; \
    mkdir -p /usr/src/openssl;tar --extract --directory /usr/src/openssl --strip-components=1 --file openssl.tar.gz; \
    rm openssl.tar.gz; cd /usr/src/openssl; ./config; make; make install; \
    gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; PATS="/usr/lib/$gnuArch"; \
    cp /usr/local/lib/libcrypto.* "$PATS/"; cp /usr/local/lib/libssl.* "$PATS/"; \
    openssl version
