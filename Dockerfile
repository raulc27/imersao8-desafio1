FROM golang:1.17 AS builder

RUN mkdir /build
ADD go.mod main.go /build/
WORKDIR /build
RUN go build

FROM scratch AS final_image
COPY --from=builder /build/codeeducation /app/
WORKDIR /app

CMD ["./codeeducation"]