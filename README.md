# docker-openfalcon-graph

## Build

Enter the following command in the repo directory.

```
$ docker build -t openfalcon-graph -f docker/ubuntu/Dockerfile .
```

## Run

### Basic Run

Use default mysql account, configuration, and falcon-graph package.

```
$ docker run -d --name graph -p 6070:6070 -p 6071:6071 openfalcon-graph
```

### Advanced Run

+ Self-defined mysql account and configuration

    Replace file **cfg.json** in the volume */config*.  
    For more detail about **cfg.json**, see [Graph](http://book.open-falcon.com/zh/install/graph.html).

For example, **cfg.json** in /tmp/config,

```
$ docker run -d --name graph -v /tmp/config/cfg.json:/config/cfg.json -p 6070:6070 -p 6071:6071 openfalcon-graph
```
