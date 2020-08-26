FROM golang:alpine

MAINTAINER Miguel Fontanilla "mifonpe@gmail.com"

RUN mkdir /app 
ADD . /app/
WORKDIR /app 
RUN go build -o main .
RUN adduser -S -D -H -h /app appuser
USER appuser
EXPOSE 80
CMD ["./main"]
