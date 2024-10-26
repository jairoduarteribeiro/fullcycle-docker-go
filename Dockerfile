FROM golang:1.23.2-alpine AS build

WORKDIR /app

COPY main.go .

RUN go build -ldflags="-s -w" main.go

FROM scratch

COPY --from=build /app/main /main

CMD ["/main"]
