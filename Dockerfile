FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    nano \
    vim \
    curl \
    nodejs \
    npm \
    build-essential \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libreadline-dev \
    libffi-dev wget && npm install -g yarn

WORKDIR /code

COPY ./package.json /code/package.json

RUN yarn install

COPY . /code

EXPOSE 3000

CMD ["npm", "run", "dev"]