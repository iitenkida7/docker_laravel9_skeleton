# docker_laravel9_skeleton
* Docker x php8.1 x Laravel9 の 一発環境構築

## Install
* 今の所 Macを想定しています。　事前に Docker Desktop for Mac がインストールされていることが前提です。
* git clone不要 以下のコマンドでインストールできます。

```
/bin/bash -ec "$(curl -fsSL https://raw.githubusercontent.com/iitenkida7/docker_laravel9_skeleton/main/install.sh)"
```

* ブラウザでSSL証明書エラーでアクセスできない場合は、以下のコマンドを実行 （パスは適宜変更）

```
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain project/docker/nginx/ssl/server.crt
```
