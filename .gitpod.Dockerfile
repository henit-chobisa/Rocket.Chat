FROM node:14.19.3

RUN curl https://install.meteor.com/?release=$( curl -so- https://raw.githubusercontent.com/RocketChat/Rocket.Chat/develop/apps/meteor/.meteor/release | cut -d@ -f2 ) | sh

USER gitpod