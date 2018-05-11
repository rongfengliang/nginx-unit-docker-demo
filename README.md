# nginx unit with docker running

## how to run (docker)

* docker build

```bash
docker build -t myunit .
```

* docker run

```bash
docker run -d -p 9080:8080 -p 9000:8000 myunit
```

* execute service

```bash
./run.sh
```

* how to access

```bash
http://localhost:9080
```

## docker-compose for build

* build image

```bash
docker-compose build
```

* deploy service

```bash
./run.sh
```

* how to access

```bash
http://localhost:9080
```