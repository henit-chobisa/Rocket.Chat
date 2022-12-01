FROM gitpod/workspace-full
USER root

RUN nvm install v14.19.3

RUN curl https://install.meteor.com/?release=$( curl -so- https://raw.githubusercontent.com/RocketChat/Rocket.Chat/develop/apps/meteor/.meteor/release | cut -d@ -f2 ) | sh
