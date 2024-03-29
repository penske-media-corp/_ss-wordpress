#!/bin/sh
docker network create pmc-dev_default
docker-compose up -d --remove-orphans --force-recreate --build
docker-compose run --rm build-npm
docker-compose run --rm test-npm
docker-compose run --rm build-php
docker-compose run \
-e BITBUCKET_BRANCH=$BITBUCKET_BRANCH \
-e BITBUCKET_CLONE_DIR=$BITBUCKET_CLONE_DIR \
-e BITBUCKET_COMMIT=$BITBUCKET_COMMIT \
-e BITBUCKET_GIT_SSH_ORIGIN=$BITBUCKET_GIT_SSH_ORIGIN \
-e BITBUCKET_REPO_OWNER=$BITBUCKET_REPO_OWNER \
-e BITBUCKET_REPO_SLUG=$BITBUCKET_REPO_SLUG \
-e BITBUCKET_TAG=$BITBUCKET_TAG \
-e CODECOV_AUTH_TOKEN=$CODECOV_AUTH_TOKEN \
-e DOCKER_HOST=$DOCKER_HOST \
-e PMC_CI_ENCODED_KEY=$PMC_CI_ENCODED_KEY \
--rm test-php
