ARG FROM_TAG=0.101.0-ext-alpine-onbuild
ARG HUGO_DESTINATION_ARG=/build
ARG HUGO_ENV_ARG=production
FROM klakegg/hugo:${FROM_TAG} AS hugo

FROM nginx:1.22-alpine
COPY --from=hugo /build /usr/share/nginx/html