ARG FROM_TAG=0.101.0-ext-alpine-onbuild
FROM klakegg/hugo:${FROM_TAG} AS hugo

ARG HUGO_DESTINATION_ARG=/build
ARG HUGO_ENV_ARG=production

FROM nginx:1.22-alpine
COPY --from=hugo /build /usr/share/nginx/html