FROM cubejs/cube:latest

ENV SUPPORTING_FILES /app
ARG DEV

# install bash for wait-for-it script
RUN apt-get update && apt-get install nano

RUN mkdir -p $SUPPORTING_FILES

WORKDIR $SUPPORTING_FILES

# COPY .npmrc .npmrc  

COPY package.json package.json 

RUN npm install

COPY . $SUPPORTING_FILES