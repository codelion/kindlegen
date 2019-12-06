
FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y curl calibre
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
