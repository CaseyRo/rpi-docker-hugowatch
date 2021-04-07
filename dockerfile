FROM ubuntu:latest
RUN apt-get update && apt install -y --no-install-recommends hugo

LABEL maintainer="Casey Romkes <casey.berlin@hey.com> (@CaseyRo)"

ADD hugo.sh /hugo.sh
RUN chmod u+x /hugo.sh
RUN mkdir /site_basedir
RUN chmod 777 site_basedir
CMD bash hugo.sh
