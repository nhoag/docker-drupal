#!/bin/bash

/root/.composer/vendor/bin/drush \
  -dv -r /var/www/html site-install -y "${APP_PROFILE}" \
  --account-mail="${USER_MAIL}" \
  --account-name="${USER_NAME}" \
  --account-pass="${USER_PASS}" \
  --locale="${APP_LOCALE}" \
  --site-mail="${SITE_MAIL}" \
  --site-name="${SITE_NAME}" \
  --db-url=mysql://"${DB_USER}":"${DB_PASS}"@"${DB_HOST}"/"${DB_NAME}"

apache2-foreground
