# python-docker

## コンテナの起動

```console
$ docker build -t costom-image .
$ docker run --name=costom-container -itd costom-image
```

## Bashセッションの作成

```console
$ docker exec -it bash
```
