FROM node:6.2-slim

ENV APPDIR /web-server
WORKDIR $APPDIR

# Install source but not docs, systests, unit tests, etc.
COPY http-server $APPDIR/http-server

EXPOSE 8080
CMD ["/web-server/http-server"]
