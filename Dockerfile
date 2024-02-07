FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct

WORKDIR /go/go-gin-example

COPY . .

RUN go build

EXPOSE 8000

ENTRYPOINT ["./go-gin-example"]
