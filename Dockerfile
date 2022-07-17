
FROM node:10.15

WORKDIR /usr/src/app

# it works if file in the same folder as Dockerfile
COPY package.json ./

# When you use COPY it will copy the files from the local source, in this case . meaning the files in the current directory, to the location defined by WORKDIR. In the above example, the second . refers to the current directory in the working directory within the image.
COPY . .

# If you are building your code for production
RUN npm install --only=production
#RUN npm install
