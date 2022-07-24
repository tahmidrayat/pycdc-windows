FROM python:3.10-alpine
RUN apk add --no-cache git cmake build-base
RUN git clone --depth=1 https://github.com/zrax/pycdc /tmp/pycdc
RUN cd /tmp/pycdc && cmake . && make && make install
RUN rm -fr /tmp/pycdc && apk del git cmake
