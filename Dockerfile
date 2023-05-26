From node:16
WORKDIR /src
COPY package.json /src
RUN yarn install
COPY . /src
CMD ["yarn", "start"]