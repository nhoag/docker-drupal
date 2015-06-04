# docker-drupal

Drupal on Docker

## Example Usage

Note: The following process is confirmed to work on OS X with `boot2docker` and `docker-compose`.

```
git clone https://github.com/nhoag/docker-drupal.git
cd ./docker-drupal/example
drush dl --drupal-project-rename=app drupal
docker-compose up
```

Then visit http://{boot2docker-ip}:8080 in your browser:

![ScreenShot](https://raw.github.com/nhoag/docker-drupal/master/images/onbuild-drupal.png)

## Extend

The example deployment can be altered and extended through environment variables in the provided [docker-compose.yml](https://raw.github.com/nhoag/docker-drupal/master/example/docker-compose.yml) file.

Vanilla Drupal can be easily replaced with any install profile, such as Commons:

```
cd ./docker-drupal/example
drush dl --drupal-project-rename=app commons
sed -i 's/standard/commons/' docker-compose.yml
docker-compose up
```

![ScreenShot](https://raw.github.com/nhoag/docker-drupal/master/images/onbuild-commons.png)

## Resources

- [Boot2docker](http://boot2docker.io/)
- [Docker Compose](https://docs.docker.com/compose/)
