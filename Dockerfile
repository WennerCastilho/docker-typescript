FROM node:14.17.1-alpine3.12

WORKDIR /code
COPY . /code/

ENTRYPOINT [ ".docker/entrypoint.sh" ]