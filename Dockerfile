FROM golang:1.16
ENV PORT 80
EXPOSE 80

WORKDIR /go/src/app
COPY . .

ARG GO111MODULE=off
RUN go get -d -v ./...
RUN go build -v -o app ./...
RUN mv ./app /go/bin/

CMD ["app"]