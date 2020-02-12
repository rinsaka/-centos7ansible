# What's This?
- インストールされた直後のCentOS 7 (centos7vagrantfile) に，Python, PHP, Laravel, MySQL-Mroonga, Mecab などを自動的にインストールすることができます．

# 設定方法

## スクリプトの実行（時間がかかります）
~~~
./run.sh
~~~

## 設定を反映させる
~~~
exec $SHELL -l
~~~

## MongoDB のパスワード設定
~~~
$ monogo
> use admin
> db.createUser({user:"root", pwd:"hogehoge", roles:["root"]})
> quit()
~~~

## MongoDB の確認
~~~
# mongo -u root
~~~

## mysql のパスワード設定

~~~
tmp_password=$(sudo grep 'A temporary password' /var/log/mysqld.log | sed -e 's/^.*: //')
sudo mysqladmin -u root --password="${tmp_password}" password
~~~
