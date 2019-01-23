
FROM node:10.15

# it works if file in the same folder as Dockerfile
#COPY package.json ./

COPY . /var/www/memowiki_prod

#RUN npm install
