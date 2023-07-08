#FROM alpine:3 as builder
#
#WORKDIR /app
#
#COPY <files> .
#
#RUN apk add --no-cache <pkg>
#
#
FROM alpine:3

LABEL authors="Text-ADI"
LABEL homepage="https://github.com/text-adi"
LABEL repository=""

WORKDIR /app
EXPOSE 80

COPY docker-entrypoint.sh .

#COPY --from=builder <from-dir-in-build> <to-dir-in-this>
#
#RUN apk add --no-cache <pkg>
#
#COPY . .

RUN chmod +x /app/docker-entrypoint.sh

ENTRYPOINT  ["/app/docker-entrypoint.sh"]