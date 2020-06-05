FROM ubuntu:19.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y mysql-workbench

CMD ["mysql-workbench"]
