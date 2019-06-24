# _ss-wordpress
- K.I.S.S. Automated accessible bin scripts for wordpress setup.
- These scripts are meant to be abstracted enough so that they can be used on any WP project.
- Only /bin/sh scripts should be used for portability and restriction of simplicity

## USAGE IN DOCKER
```
ADD https://github.com/penske-media-corp/_ss-wordpress/archive/master.zip /tmp
RUN unzip /tmp/master.zip -d /tmp && mv /tmp/_ss-wordpress-master/alpine/* /usr/bin/
```

## USAGE IN DOCKER-COMPOSE
```
 command: >
      sh -c "pmc-run-{php|npm}-ci"
```
OR
```
 command: >
      sh -c "curl -L https://raw.githubusercontent.com/penske-media-corp/_ss-wordpress/master/alpine/php/_ss-* | /bin/sh
```
## USAGE VIA CURL
```
curl -L https://raw.githubusercontent.com/penske-media-corp/_ss-wordpress/master/alpine/php/_ss-* | /bin/sh
```

## ENVRIONMENT VARIABLES

For the most up to date list of environment variables [see this](https://github.com/penske-media-corp/generator-pmc/generators/docker/templates/wp/.env)
