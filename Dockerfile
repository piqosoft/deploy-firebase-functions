# Firebase version is hardcoded due to issues with v11.19.0
FROM node:18-slim as builder
RUN npm install -g firebase-tools

FROM builder as final
COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
