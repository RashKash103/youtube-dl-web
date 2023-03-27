FROM node:17 as frontend-builder

WORKDIR /usr/src/app
COPY --chown=1000:1000 ./youtube-dl-web/frontend /usr/src/app

RUN yarn install
RUN yarn build

FROM nginx

LABEL org.opencontainers.image.source=https://github.com/RashKash103/youtube-dl-web
LABEL org.opencontainers.image.description="youtube-dl-web"
LABEL org.opencontainers.image.licenses=MPL-2.0

COPY --from=frontend-builder /usr/src/app/build /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.template

ENV API_HOST='youtube-dl-api'
ENV API_PORT='4000'

EXPOSE 80

CMD sh -c "envsubst \"`env | awk -F = '{printf \" \\\\$%s\", $1}'`\" < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"