# docker-base-images

This project builds several docker images from `debian` and `node` distributions.

## What's the motivation behind the project?

- It introduces debugging tools to help on troubleshooting.
- It reduces the time needed to run docker build, allowing you to iterate your
Dockerfile more quickly.
- It reduces download time during redeploys.
Docker only needs to download the base image once: during the first deploy.
On every subsequent deploys, only the changes you make on top of the base image
are downloaded.
- It centralizes single point to apply security patches and updates.

## What's inside the images?

Take a look into the [Dockefile](Dockerfile)

## How to use?

In your Dockefile in the `FROM` instruction add one of the base image which fits your project needs.

| Version | Purpose | FROM |
| - | - | - |
| debian:stable-slim   | Static binaries (Ex.: go binaries) | registry.agilepromoter.com/base-debian |
| node:14-stretch-slim | Applications that require node 14  | registry.agilepromoter.com/base-node14 |
| node:16-stretch-slim | Applications that require node 16  | registry.agilepromoter.com/base-node16 |