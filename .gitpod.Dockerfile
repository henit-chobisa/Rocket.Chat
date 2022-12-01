RUN curl https://install.meteor.com/?release=$( curl -so- https://raw.githubusercontent.com/RocketChat/Rocket.Chat/develop/apps/meteor/.meteor/release | cut -d@ -f2 ) | sh
RUN nvm install v14.19.4
RUN nvm alias default v14.19.3


USER gitpod