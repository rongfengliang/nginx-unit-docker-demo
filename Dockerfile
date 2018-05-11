FROM golang:stretch AS build-env
RUN apt-get update
# RUN apt-get install -y build-essential
RUN git clone https://github.com/nginx/unit.git /go/src/github.com/nginx/unit
RUN cd /go/src/github.com/nginx/unit && git checkout tags/1.1 && ./configure && ./configure go && make go-install

ADD . /go/src/github.com/rongfengliang/nginx-unit-go
RUN cd /go/src/github.com/rongfengliang/nginx-unit-go && go build -o /appdemo app.go

FROM nginx/unit:1.1-full
WORKDIR /appdemo
ADD start.json  /appdemo/start.json
COPY website /appdemo/website/
COPY --from=build-env /appdemo /appdemo/website/appdemo
EXPOSE 8080 8000 8081
CMD ["/usr/sbin/unitd", "--no-daemon","--control", "0.0.0.0:8000"]
