#!/bin/bash

CONTAINER_CMD=$(which podman || which docker)

$CONTAINER_CMD tag localhost/terms:latest registry.bristolhackspace.org/terms:latest

$CONTAINER_CMD push registry.bristolhackspace.org/terms:latest

