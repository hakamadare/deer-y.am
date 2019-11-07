FROM cibuilds/hugo:0.59 as hugo

ENV HUGO_ENV production

WORKDIR /src
COPY . /src

RUN hugo -v --enableGitInfo --cleanDestinationDir

FROM nginx:stable-alpine

COPY --from=hugo /src/public /usr/share/nginx/html
