# 概要

最速でherokuにAPIサーバを立てる。
軽量なsinatraフレームワークを使う。

# 導入

```
bundle install --path vendor/bundle
```

## gitを再登録

例）

```
cd sinatra-heroku-api
rm -rf .git/  # リポジトリ情報を消去
git init
git add .
git commit -m 'Initial Commit'
git remote add origin https://github.com/sonoshou/sinatra-heroku-api.git  # originとしたいリポジトリを指定
git push -u origin master
```

## ローカルの起動

```
bundle exec foreman start
```

## herokuにPush

```
heroku login
bundle exec heroku create [your-project]
git push heroku master
bundle exec heroku open
```
