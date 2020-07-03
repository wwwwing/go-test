FROM golang:1.12

LABEL MAINTAINER="xmcn<122>"

ENV GO111MODULE on

WORKDIR /go/src/go-test

COPY . .

RUN go mod vendor

RUN go build -o go-test

EXPOSE 8080

CMD ["bash","-c","/go/src/go-test/go-test"]
