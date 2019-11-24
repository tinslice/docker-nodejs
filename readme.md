# docker-nodejs

[![Docker Automated build](https://img.shields.io/docker/cloud/automated/tinslice/nodejs.svg?style=flat)](https://hub.docker.com/r/tinslice/nodejs/builds)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/tinslice/nodejs.svg?style=flat)](https://hub.docker.com/r/tinslice/nodejs/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/tinslice/nodejs.svg?style=flat)](https://hub.docker.com/r/tinslice/nodejs/)
[![license](https://img.shields.io/github/license/tinslice/docker-nodejs.svg)](https://github.com/tinslice/docker-nodejs)

Docker image with node js and other useful tools for building and testing web applications.

Available images: `latest`, `8.16.0-alpine`.

## Usage

```bash
docker run --rm -it -v /path/to/project:/workspace -v <node-modules-volume>:/workspace/node_modules tinslice/nodejs:8.16.0-alpine bash
```

### Automatic login to private npm repositories 

```bash
docker run --rm -it \
    -e NPM_REGISTRY=<npm-registry> \
    -e NPM_USER=<npm-user> \
    -e NPM_PASS=<npm-pass> \
    -v /path/to/project:/workspace \
    -v <node-modules-volume>:/workspace/node_modules \ 
    tinslice/nodejs:8.16.0-alpine bash
```

