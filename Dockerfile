FROM golang:1.16 AS builder

RUN mkdir /build
ADD go.mod main.go /build/
WORKDIR /build
RUN go build

FROM alpine
COPY --from=builder /build/fullcycle8desafio1 /app/
WORKDIR /app

CMD ["./fullcycle8desafio1"]