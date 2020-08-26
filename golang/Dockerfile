FROM golang:alpine

MAINTAINER Miguel Fontanilla "mifonpe@gmail.com"

RUN mkdir /app 
ADD . /app/
WORKDIR /app 
RUN go build -o main .
EXPOSE 80
CMD ["./main"]
