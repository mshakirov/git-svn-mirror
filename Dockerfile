FROM alpine:3.7

USER root
ADD ./ /srv/
WORKDIR /srv/
COPY build.sh /srv/build.sh
RUN /bin/sh /srv/build.sh && rm -rfv /srv/build.sh
VOLUME /srv/repo
ENTRYPOINT ["git-svn-mirror"]
CMD ["help"]