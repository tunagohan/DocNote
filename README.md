# NoteDoc


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
$ docker-compose run --rm app rake db:create db:migrate:reset db:seed
```

### 接続して確認する

http://localhost:Port番号

## なんかとりあえずエラーが出た場合の対処法

### Exit しているコンテナを知る

```
$ docker-compose ps
Name                Command               State                      Ports
-----------------------------------------------------------------------------------------------
md_mysql   docker-entrypoint.sh mysqld      Up      0.0.0.0:3333->3306/tcp
md_nginx   /bin/sh -c /usr/sbin/nginx ...   Up      0.0.0.0:1001->443/tcp, 0.0.0.0:1000->80/tcp
md_rails   bundle exec puma -C config ...   Exit 1
```

### logを確認する

```
$ docker-compose logs -f md_rails(ここはコンテナ名)
```

### 詳細を知る

#### puma.sockがどうたらだったら

```
$ rm -rf tmp/sockets/puma.sock
$ touch tmp/sockets/puma.sock
```

#### ActiveRecord::PendingMigrationErrorとかだったら

```
$ docker-compose run --rm app rake db:create db:migrate:reset db:seed
```

#### その他

**チームメンバーに相談**

## このアプリケーションの作成手順記録

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
$ docker-compose run --rm app rake db:create db:migrate db:seed
```

### 接続して確認する

http://localhost:Port番号