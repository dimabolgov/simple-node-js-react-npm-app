
FROM node:10.15

WORKDIR /usr/src/app

# Don’t run Node.js apps as root
# Docker defaults to running the process in the container as the
# root user, which is a precarious security practice. Use a low
# privileged user and proper filesystem permissions:
USER node
# • COPY --chown=node:node . /usr/src/app

# it works if file in the same folder as Dockerfile
COPY --chown=node:node package.json ./

# When you use COPY it will copy the files from the local source, in this case . meaning the files in the current directory, to the location defined by WORKDIR. In the above example, the second . refers to the current directory in the working directory within the image.
COPY --chown=node:node . /usr/src/app

# Optimize Node.js apps for production
# Some Node.js libraries and frameworks will only enable
# production-related optimization if they detect that the
# NODE_ENV env var set to production
ENV NODE_ENV production

# If you are building your code for production
# RUN npm install --only=production
RUN npm ci --only=production
#RUN npm install
