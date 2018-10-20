# python-docker

## コンテナの起動

```console
$ docker build -t custom-image .
$ docker run --name=custom-container -itd custom-image
```

## Bashセッションの作成

```console
$ docker exec -it custom-container bash
```
