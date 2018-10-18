test -z $(which ansible-playbook) && sudo yum install -y epel-release && sudo yum install -y ansible
sudo yum update -y ansible
ansible-playbook main.yml --connection=local
ansible-playbook 01-apache.yml --connection=local
ansible-playbook 02-ldapserver.yml --connection=local
ansible-playbook 03-ldif.yml --connection=local
ansible-playbook 04-mysql.yml --connection=local
