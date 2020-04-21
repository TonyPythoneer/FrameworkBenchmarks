FROM golang:1.14

ENV GO111MODULE=off

ADD ./ /gin
WORKDIR /gin

RUN mkdir bin
ENV GOPATH /gin
ENV PATH ${GOPATH}/bin:${PATH}

RUN go get github.com/gin-gonic/gin
RUN go get github.com/go-sql-driver/mysql

RUN go build -o hello hello.go
CMD ./hello
