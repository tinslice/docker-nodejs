# docker-nodejs

[![license](https://img.shields.io/github/license/tinslice/docker-supervisord.svg)](https://github.com/tinslice/docker-supervisord)

Docker image with node js and other usefull tools for building and testing web applications.

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

