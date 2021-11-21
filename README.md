# API 専用アプリケーション Rails session_store redis サンプル

API 専用アプリケーション Rails において session_store に直接 Redis を指定するサンプル。

## 環境

`docker-compose` を使って開発環境を立ち上げます。

- Ruby
  - 3.0.2
- Rails
  - 6.1.4.1

### Docker プロセス起動

```bash
docker-compose up
# Ctrl+C で終了
```

### Docker アタッチ

```bash
docker-compose exec app /bin/bash
```

### Docker プロセス終了

```bash
docker-compose rm
```