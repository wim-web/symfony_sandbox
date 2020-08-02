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
docker-compose run --rm workspace composer create-project symfony/website-skeleton:"^4.4" .
```

コンテナを立ち上げる

```
make up
```

http://localhost にアクセスして画面が出れば成功

## databaseの設定

symfonyの`.env`のdatabaseの情報を変更する

```
DATABASE_URL=mysql://root:pass@mysql:3306/db1?serverVersion=8.0
```

## その他

workspaceに入る

```
make work
```

mysqlに入る

```
make mysqld
```
