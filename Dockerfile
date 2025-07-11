FROM alpine

COPY . /TerminalImageViewer

RUN apk add --no-cache g++ make libpng-dev libpng-static zlib-static && cd /TerminalImageViewer/src && make

ENTRYPOINT ["/TerminalImageViewer/src/tiv"]
