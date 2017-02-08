# docker
## wait-for-it
A simple shell script to wait for processes to come up
It is usefull especially when using docker compose and to make processes wait for another to become ready.
For instance, An app waiting for database initialization.

## HOW TO BUILD
```bash
docker build -t waitf-it-for-it .
```
## USAGE
```bash
docker run waitf-it-for-it -e HOST_ADDRESS=127.0.0.1 HOST_PORT=5432 TIME_OUT_SECONDS=15 COMMAND=date
```
