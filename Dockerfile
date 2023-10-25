FROM golang:1.21

WORKDIR /app

RUN apt update

RUN apt install -y graphviz

RUN go install github.com/cosmtrek/air@latest
RUN go install github.com/lucasepe/yml2dot@latest

CMD [ "air", "-c", ".air.conf" ]