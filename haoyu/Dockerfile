FROM ubuntu

RUN apt update  && \
    apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt install -y nodejs && \
    apt install -y netcat

WORKDIR /var/app

EXPOSE 4200 9292

COPY .npmrc package.json package-lock.json /var/app/

RUN npm install

COPY . /var/app
RUN chmod +x test.sh

ENTRYPOINT ["./test.sh"]
