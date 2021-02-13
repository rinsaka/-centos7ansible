test -z $(which ansible-playbook) && sudo yum install -y epel-release && sudo yum install -y ansible
sudo yum update -y ansible
ansible-playbook main.yml --connection=local
ansible-playbook 00-ntp.yml --connection=local
ansible-playbook 01-apache.yml --connection=local

### LDAP Client の場合は次の1行を有効に
# ansible-playbook 02-ldapclient.yml --connection=local


### LDAP Server の場合は次の1行を有効に
# ansible-playbook 02-ldapserver.yml --connection=local
# ansible-playbook 03-ldif.yml --connection=local


### いろいろな開発環境は以下をすべて有効に
ansible-playbook 04-mecab.yml --connection=local
ansible-playbook 05-mongodb.yml --connection=local
ansible-playbook 05-mysql.yml --connection=local
ansible-playbook 06-php.yml --connection=local
ansible-playbook 07-laravel.yml --connection=local
ansible-playbook 08-ruby.yml --connection=local
ansible-playbook 09-python-anaconda.yml --connection=local
ansible-playbook 10-pdftotext.yml --connection=local
# ansible-playbook 11-nfs-server.yml --connection=local
ansible-playbook 12-bind-utils.yml --connection=local
ansible-playbook 13-siege.yml --connection=local
