FROM mhart/alpine-node
MAINTAINER Adedayo Omitayo <adedayo.omitayo@flowswift.com>

RUN apk update \
  && apk add bash curl \
  && rm -rf /var/cache/apk/* \
  && rm -rf /tmp/*

RUN mkdir /editor
WORKDIR /editor

COPY package.json .
RUN npm install --unsafe-perm \
  && rm -fr /tmp/* ~/.npm

COPY . .

EXPOSE  8080
VOLUME [ "/openapi" ]

ENTRYPOINT [ "/editor/entrypoint.sh" ]
CMD [ "" ]

LABEL org.label-schema.license=ISC \
      org.label-schema.vcs-ref=master \
      org.label-schema.vcs-url=https://github.com/Aomitayo/openapi-editor.git
