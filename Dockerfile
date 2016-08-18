FROM mhart/alpine-node:6.4
MAINTAINER berwyn
RUN npm i -g angular-cli@webpack
VOLUME /app
WORKDIR /app
ENTRYPOINT ["npm", "install"]
CMD ["ng", "test"]