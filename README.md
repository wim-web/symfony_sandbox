# symfonyの環境用docker

![php_version_7.4](https://img.shields.io/badge/PHP-7.4-green)

## ディレクトリ構造

```
.
├── app
└── docker
    ├── README.md
    ├── .env.sample
    ├── docker-compose.yml
    └── workspace


```

## はじめかた

docker-compose用の`.env`を作成して、コピーした`.env`の内容を埋める

```
cp .env.sample .env
```

symfony4.4をインストールする

```
docker compose run --rm workspace composer create-project symfony/website-skeleton:"^4.4" .
```

webサーバーを立ち上げる

```
docker-compose run --rm --service-ports workspace symfony server:start
```

http://127.0.0.1:8000 にアクセスしてsymfonyの画面が出れば完了

## その他

workspaceに入る

```
docker-compose run --rm workspace ash
```
