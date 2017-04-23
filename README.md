# 概要

Herokuにサーバを立てる。
軽量なsinatraフレームワークを使う。

# 前提

## アカウント

- Heroku

## インストール環境

- heroku CLI
- ruby
- `gem install bundler`

# 導入

```
bundle install --path vendor/bundle
```

## ローカルの起動

```
bundle exec foreman start
```

デフォルトで5000番ポートを使用する。

```
http://localhost:5000/
```

以上のURLで開けるか確認。

## gitを再登録

本リポジトリはテンプレートリポジトリなので、  
必要に応じて、以下のようにgitリポジトリを初期化してください。

例）

```
cd sinatra-heroku-api
rm -rf .git/  # リポジトリ情報を消去
git init
git add .
git commit -m 'Initial Commit'
git remote add origin [new_repogitory.git]  # 新たにoriginとしたいリポジトリを指定
git push -u origin master
```

## herokuにPush

```
heroku login
bundle exec heroku create [your-project]
git push heroku master
bundle exec heroku open
```
