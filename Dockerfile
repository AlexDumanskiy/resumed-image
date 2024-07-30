FROM node
ENV THEME=flat

RUN mkdir -p /usr/resumed
WORKDIR /usr/resumed


RUN npm install git+https://github.com/AlexDumanskiy/resumed \
                jsonresume-theme-${THEME}

ENTRYPOINT [ "/usr/resumed/node_modules/.bin/resumed" ]
