FROM bitnami/php-fpm:7.1 as builder
MAINTAINER Miguel Fontanilla "mifonpe@gmail.com"

ENV APP_ENV="prod"
COPY index.php /app
COPY config.${APP_ENV} /app/config
WORKDIR /app
FROM bitnami/php-fpm:7.1-prod
COPY --from=builder /app /app
WORKDIR /app
EXPOSE 9000
CMD ["php-fpm", "-F", "--pid" , "/opt/bitnami/php/tmp/php-fpm.pid", "-c", "/opt/bitnami/php/conf/php-fpm.conf"]
