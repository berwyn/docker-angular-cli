FROM mhart/alpine-node:6.4
MAINTAINER berwyn
VOLUME /app
WORKDIR /app

RUN apk add --no-cache python make g++ \
    && npm i -g angular-cli@webpack \
    && npm cache clean

ENTRYPOINT ["npm", "install"]
CMD ["ng", "test"]