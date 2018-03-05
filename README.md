# NoteDoc

## このアプロケーションの作成手順記録

### envの編集

```
$ cp env-example .env
$ vim .env
```

### アプリケーションの作成

```
$ docker-compose run --rm app rails new . --force --database=mysql --skip-bundle
```

### 権限の変更

```
$ sudo chown -R $USER:$USER .
```

### 設定ファイルの上書き

```
$ mv docker/config/database.yml config/database.yml
$ mv docker/config/puma.rb config/puma.yml
```

### ビルドしイメージの作成

```
$ docker-compose build
```

### コンテナの起動

```
$ docker-compose up -d
```

### MySQLユーザーの一般ユーザーに権限を付与

```
$ docker exec -it MySQLのcontainer名 bash
# mysql -uroot -p
# パスワード入力
mysql > GRANT ALL PRIVILEGES ON *.* TO '権限を付与したいユーザー名'@'%';
mysql > FLUSH PRIVILEGES;
```

### bundle install

```
$ docker-compose run --rm app bundle install
```

### DBの作成

```
$ docker-compose run --rm app bin/rake db:create db:migrate db:seed
```

### 接続して確認する

http://localhost:Port番号



## クローン後アプリケーションを動かすには…。

### envの編集

```
$ cp env-example .env
$ vim .env
```

### 権限の変更

```
$ sudo chown -R $USER:$USER .
```

### ビルドしイメージの作成

```
$ docker-compose build
```

### コンテナの起動

```
$ docker-compose up -d
```

### コンテナの起動確認

```
$ docker-compose ps
```

### MySQLユーザーの一般ユーザーに権限を付与

```
$ docker exec -it MySQLのcontainer名 bash
# mysql -uroot -p
# パスワード入力
mysql > GRANT ALL PRIVILEGES ON *.* TO '権限を付与したいユーザー名'@'%';
mysql > FLUSH PRIVILEGES;
```

### bundle install

```
$ docker-compose run --rm app bundle install
```

### DBの作成

```
$ docker-compose run --rm app bin/rake db:create db:migrate db:seed
```

### 接続して確認する

http://localhost:Port番号
