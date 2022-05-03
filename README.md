# docker_laravel9_skeleton
* Docker x Laravel9 の 一発環境構築

## Install

* git clone 不要 以下のコマンドでインストール できます。
* 今の所 Macを 想定。

```
/bin/bash -ec "$(curl -fsSL https://raw.githubusercontent.com/iitenkida7/docker_laravel9_skeleton/main/install.sh)"
```

* ※ ブラウザでSSL証明書Errorがでてアクセスできない場合は、以下のコマンドを実行 （パスは適宜変えてください。）

```
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain project/nginx/ssl/server.crt
```
