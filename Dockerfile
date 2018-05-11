FROM nginx/unit:1.1-full
WORKDIR /appdemo
ADD start.json  /appdemo/start.json
COPY website /appdemo/website/
EXPOSE 8080 8000
CMD ["/usr/sbin/unitd", "--no-daemon","--control", "0.0.0.0:8000"]
