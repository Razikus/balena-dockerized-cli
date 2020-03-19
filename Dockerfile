FROM node:10
USER root
RUN npm -g config set user root && npm install balena-cli -g --unsafe-perms --production
RUN ln -s /bin/bash /usr/local/bin/bash
COPY entrypoint.sh /entrypoint.sh
ENV BALENALOGIN=
ENV BALENAPASSWORD=
ENV OPENBALENA=
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
