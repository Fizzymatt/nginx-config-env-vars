# nginx-config-env-vars #

An NGINX instance that ouputs a string containing a value that is specified in an environment variable

## Development environment prerequisites ##

- [Docker](https://docs.docker.com/) version 17.12.0-ce or higher

## Environment variables ##

- **HAPPY_GREETING**: contains a value that will be included as part of a string returned from an http response

## Running locally with Docker ##

- in the **env.dev** file, ensure that the **HAPPY_GREETING** variable contains the value that you wish to return in the http response
- navigate to the project root, and build the Docker image with:

```bash
docker build -t nginx-config-env-vars .
```

- run a Docker container with:

```bash
docker run --name nginx-config-env-vars --env-file ./env.dev -p 80:80 -d nginx-config-env-vars
```

The container should now accept requests on localhost port 80, and respond with a string containing the value that you specified in the **env.dev** file

When you're done, you can stop the container with:

```bash
docker stop nginx-config-env-vars
```

...and remove the container with:

```bash
docker rm nginx-config-env-vars
```

NOTE: if you change the value that is stored within the **env.dev** file, then you'll need to create a new container (see above) before you'll see NGINX respond to the changes