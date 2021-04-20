FROM node:14

COPY . /app
WORKDIR /app

RUN curl https://getsubstrate.io -sSf | /bin/bash -s -- --fast
ENV PATH="/root/.cargo/bin:${PATH}"

RUN git config --global user.name "Setheum Bench Bot"
RUN git config --global user.email jbashir52@gmail.com

RUN yarn
CMD yarn start
