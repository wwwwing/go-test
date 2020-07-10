FROM daocloud.io/daocloud/golang

LABEL MAINTAINER="xmcn<122>"

RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct

WORKDIR /go/src/go-test

COPY . .

RUN go mod vendor

RUN go build -o go-test

EXPOSE 8080

CMD ["bash","-c","/go/src/go-test/go-test"]
