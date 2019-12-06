
FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y curl
RUN curl http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz | \
  tar xz -C /usr/bin kindlegen
COPY entrypoint.sh /entrypoint.sh

# Required or the build fails because "C" isn't a valid language
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8

ENTRYPOINT ["/entrypoint.sh"]
