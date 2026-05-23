FROM golang:1.26.3 AS go

FROM node:26.2 AS node

COPY --from=go /usr/local/go /usr/local/go
ENV GOPATH /go
ENV CGO_ENABLED=0
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN npm install --global yarn

WORKDIR /app
CMD [ "sleep infinity" ]
