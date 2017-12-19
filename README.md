# Algo VPN Docker Container

This docker image has all of the depedencies that are needed to run
[algo](https://github.com/trailofbits/algo). Algo is a VPN solution you can spin
up in the cloud. It takes roughly 15 minutes to setup.

## Building the image

```shell
docker build -t algo .
```

## Building and running the container

```shell
docker run -ti -rm -v $(pwd)/configs:/algo-master/configs algo
```




