FROM node:14.19.3

RUN npm install npm@5.3.0
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

RUN curl https://install.meteor.com/?release=$( curl -so- https://raw.githubusercontent.com/RocketChat/Rocket.Chat/develop/apps/meteor/.meteor/release | cut -d@ -f2 ) | sh

USER gitpod