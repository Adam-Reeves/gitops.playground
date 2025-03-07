FROM golang:1.18 as build

WORKDIR /go/src/app
COPY ./src .

RUN go mod download
RUN CGO_ENABLED=0 go build -o /go/bin/app

FROM gcr.io/distroless/static-debian11

EXPOSE 8080

COPY --from=build /go/bin/app /

CMD ["/app"]
