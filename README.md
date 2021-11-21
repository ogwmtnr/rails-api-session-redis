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

### rails サーバー起動

```bash
# アタッチ後
bundle exec rails s -b 0.0.0.0 -p $PORT
```

- http://127.0.0.1:3000/redis/session_set
  - 現在時刻を session に格納します
- http://127.0.0.1:3000/redis/session_get
  - session に格納した時刻を返します