# Seshat

> Seshat, under various spellings, was the ancient Egyptian goddess of wisdom, knowledge, and writing. She was seen as a scribe and record keeper, and her name means she who scrivens (i.e. she who is the scribe), and is credited with inventing writing
>
> --Seshat

Tanihub development mongo container

This repository will be used together with it's related service

## Prerequisites

* [install](https://docs.docker.com/install/) [docker](https://www.docker.com/)


## Running this individually

* `$ cp .env.example .env`
* `$ docker-compose up -d --build`
* `$ docker exec -ti d-seshat sh`
* `./scripts/init.sh`

## Restarting

* `$ docker restart d-seshat`

## Hard restart

* `$ docker stop d-seshat && docker rm d-seshat && docker-compose up -d --build`
