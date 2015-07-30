# docker-openfalcon-graph

## Build

Enter the following command in the repo directory.

```
$sudo docker build --force-rm=true -t openfalcon-graph .
```

## Run

### Basic Run

Use default mysql account, configuration, and falcon-graph package.

```
$sudo docker run -dti --name graph -p 6070:6070 -p 6071:6071 openfalcon-graph
```

### Advanced Run

+ Self-defined mysql account and configuration

  Replace file **cfg.json** in the volume */config*.  
  For more detail about **cfg.json**, see [Graph](http://book.open-falcon.com/zh/install/graph.html).

+ New falcon-graph package

  Replace file **falcon-graph.tar.gz** in the volume */package*.
  
  For example, **cfg.json** in /tmp/config and **falcon-graph.tar.gz** in /tmp/pack,

```
$sudo docker run -dti --name graph -v /tmp/pack:/package -v /tmp/config/cfg.json:/config/cfg.json -p 6070:6070 -p 6071:6071 openfalcon-graph
```
