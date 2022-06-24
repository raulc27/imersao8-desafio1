FROM golang:1.16

WORKDIR /go/src/desafio1
ENV PATH="/go/bin:${PATH}"

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["go","run","main.go"]