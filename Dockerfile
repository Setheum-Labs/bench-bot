FROM node:14

COPY . /app
WORKDIR /app

RUN curl https://getsubstrate.io -sSf | /bin/bash -s -- --fast
ENV PATH="/root/.cargo/bin:${PATH}"

RUN git config --global user.name "Setheum Benchmarking Bot"
RUN git config --global user.email jbashir52@gmail.com
RUN git config --global submodule.recurse true

RUN yarn
CMD yarn start
