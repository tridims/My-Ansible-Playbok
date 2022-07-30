lab deploy-inventory start
vim /etc/ansible/hosts
sudo vim /etc/ansible/hosts
ansible all --list-hosts
ansible ungrouped --list-hosts
ansible webservers --list-hosts
sudo vim /etc/ansible/hosts
ansible webservers --list-hosts
ansible webservers 
pwd
mkdir deploy-inventory
cd deploy-inventory/
vim inventory
cat inventory
ansible webservers -i inventory --list-host
ansible all -i inventory --list-host
vim inventory 
ansible all -i inventory --list-host
ansible development -i inventory --list-host
ansible development -i inventory --list-hosts
ansible testing -i invetnory --list-hosts
ansible testing -i inventory --list-hosts
ansible production -i inventory --list-hosts
ansible us -i inventory --list-hosts
lab deploy-inventory finish
lab deploy-inventory start
sudo vim /etc/ansible/hosts
ansible all --list-hosts
ansible ungrouped --list-hosts
ansible webservers --list-hosts
ls
cd deploy-inventory
vim inventory
ls
ansible all -i inventory --list-hosts
lab deploy-inventory finish
cd ..
lab deploy-manage start
mkdir deploy-manage
cd deploy-manage/
ls
vim inventory
vim ansible.cfg
cat ansible.cfg
vim inventory
cat inventory
ansible myself --list-hosts
ansible intrawebnet --list-hosts
vim inventory
ansible intranetweb --list-hosts
ansible web --list-hosts
ansible all --list-hosts
vim ansible.cfg 
ansible --list-hosts
ansible all --list-hosts
lab deploy-manage finish
lab deploy-adhoc start
cd ~
sudo -l -U devops
ssh devops@servera.lab.example.com
cd deploy-adhoc/
ls
cat ansible.cfg
cat inventory
ansible all -m ping
ansible localhost -m command -a 'id'
ansible localhost -m command -a 'id' =y div'ps
ansible localhost -m command -a 'id' =y devops
ansible localhost -m command -a 'id' -u devops
ansible localhost -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops
ansible localhost -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become
ansible all -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become
ansible all -m command -a 'cat /etc/motd' -u devops
lab deploy-adhoc finish
vim $HOME/.vimrc
cd ~
ls
ls -la
lab playbook-basic statr
lab playbook-basic start
cd playbook-basic/
ls
ls -la
cat ansible.cfg 
cat inventory 
ls files
cat files/index.html 
vim site.yml
ansible-playbook --syntax-check site.yml
ansible-playbok site.yml
ansible-playbook site.yml
vim site.yml
ansible-playbook --syntax-check site.yml
ansible-playbook site.yml
curl serverc.lab.example.com
curl serverd.lab.example.com
lab playbook-basic finish
cd ..
ls
pwd
lab playbook-multi statr
lab playbook-multi start
ls
cd playbook-multi
ls
cat ansible.cfg
cat inventory
vim intranet.yml
ansible-playbook --syntax-test intranet.yml
ansible-playbook --syntax-check intranet.yml
vim intranet.yml
ansible-playbook --syntax-check intranet.yml
ansible-playbook -v intranet.yml
lab playbook-multi finish
ls
history
lab playdook-review start
cd ~
lab playbook-review
lab playbook-review start
ls
cd playbook-
cd playbook-review
ls
cat ansible.cfg
cat inventory
vim internet.yml
ansible-playbook --syntax-check internet.yml 
vim internet.yml
ansible-playbook --syntax-check internet.yml 
ls
cd playbook-review
ls
cp internet.yml ~/internet.yml
cd ..
ls
cat internet.yml 
ls
cd playbook-review/
ls
ansible-playbook internet.yml 
vim internet.yml 
ansible-playbook internet.yml --syntax-check
ansible-playbook internet.yml
ansible-playbook internet.yml --syntax-check
vim internet.yml 
ansible-playbook internet.yml
vim internet.yml 
ansible-playbook internet.yml --syntax-check
ansible-playbook internet.yml
vim internet.yml 
ansible-playbook internet.yml --syntax-check
ansible-playbook internet.yml
lab playbook-review grade
lab playbook-review finish
ls
cd playbook-review/
ls
vim inventory 
vim internet.yml 
cd ..
ls
lab data-variables start
cd data-variables/
ls
vim playbook.yml
ansible-playbook --syntax-check playbook.yml
ansible-playbook playbook.yml
vim playbook.yml
sl
ls
cat inventory 
cat ansible.cfg 
vim playbook.yml 
ansible-playbook inventory
ansible-playbook playbook.yml 
vim playbook.yml 
ansible-playbook playbook.yml 
lab data-variables finish
lab data-secret start
cd data-se
cd ~
cd data-secret/
ansible-vault edit secret.yml 
vim create_user.yml
ansible-playbook --syntax-check
ansible-playbook --syntax-check --ask-vault-pass create_user.yml 
echo 'redhat' > vault-pass
chmod 0600 vault-pass
ls
cat vault-pass 
ansible-playbook --vault-password-file=vault-pass create_users.yml
ls
ansible-playbook --vault-password-file=vault-pass create_user.yml
ssh -o PreferredAuthentications=password ansibleuser1@servera.lab.example.com
lab data-secret finish
lab data-facts start
cd data-fact
cd ~/data-facts/
ansible webserver -m setup
vim custom.fact
vim setup_facts.yml
ansible webserver -m setup
ansible-playbook --syntax-check setup_facts.yml
ansible-playbook setup_facts.yml
vim playbook.yml
ansible servera.lab.example.com -m command -a 'systemctl status httpd'
ansible-playbook --syntax-check
ansible-playbook --syntax-check playbook.yml 
ansible-playbook playbook.yml 
ansible servera.lab.example.com -m command -a 'systemctl status httpd'
lab data-facts finish
history
lab data-review start
ls
cd ~
ls
cd data-review/
ls
ls files
cat inventory 
vim playbook.yml
ls
mkdir vars
cd vars
ansible-vault secret.yml
ansible-vault create secret.yml
cd ..
ansible-playbook --syntax-check playbook.yml --ask-vault-pass
ansible-playbook playbook.yml --ask-vault-pass
lab data-review grade
lab data-review finish
lab file-manage start
cd file-manage/
ls
cat inventory 
cat ansible.cfg 
ls files/
vim secure_log_backups.yml
ansible-playbook secure_log_backups.yml --syntax-check
ansible-playbook secure_log_backups.yml 
tree -F secure-backups/
vim copy_file.yml
ansible-playbook copy_file.yml --syntax-check
ansible-playbook copy_file.yml 
ansible all -m command -a 'ls -Z' -u devops
vim selinux_defaults.yml
ansible-playbook selinux_defaults.yml --syntax-check
ansible all -m command -a 'ls -Z' -u devops
vim add_line.yml
ansible add_line.yml --syntax-check
ansible-playbook add_line.yml --syntax-check
ansible-playbook add_line.yml 
ansible all -m commmand /
ansible all -m commmand -a 'cat users.txt' -u devops
ansible all -m command -a 'cat users.txt' -u devops
vim add_block.yml
ansible-playbook add_block.yml --syntax-check
ansible-playbook add_block.yml 
ansible-playbook add_block.yml --syntax-check
ansible-playbook add_block.yml 
vim add_block.yml
ansible-playbook add_block.yml 
ansible all -m comand -a 'cat users.txt' -u devops
ansible all -m command -a 'cat users.txt' -u devops
vim remove_file.yml
ansible-playbook --syntax-check
ansible-playbook --syntax-check remove_file.yml 
ansible all -m command -a 'ls -l' -u devops
lab file-manage finish
lab file-template start
cd file-template
ls
cat inventory
ls
ls files
cat files/motd.yml 
cd ..
cd file-template/
ls
cd files
ls
cat motd.
cat motd.j2 
ls
cat motd.yml 
ansible-playbook --syntax-check motd.yml 
cd ..
ls
mv files/* .
ls
ansible-playbook --syntax-check motd.yml 
ansible-playbook motd.yml 
ssh devops@servera.lab.example.com
ls
cat motd.j2 
cat motd.yml 
ls
lab file-template finish
lab file-review start
history
cd..
cd ..
ls
ls -la
ls -la | grep review
cd file-review/
ls
cat inventory
cat ansible.cfg
ls files/
cat files/issue 
cat files/motd.j2
cat files/motd.yml 
ls
cd ..
cd file-review/
curl https://raw.githubusercontent.com/tridims/ansible-notebook-scratchpad/main/file-review/motd.yml
curl https://raw.githubusercontent.com/tridims/ansible-notebook-scratchpad/main/file-review/motd.yml -o motd.yml
curl https://raw.githubusercontent.com/tridims/ansible-notebook-scratchpad/main/file-review/motd.j2 -o motd.j2
vim motd.j2
ls
cat motd.yml
vim motd.yml
ansible-playbook motd.yml --syntax-check
ansible-playbook motd.yml 
vim motd.yml
cat files/motd.yml
vim motd.yml
ansible-playbook motd.yml 
cat files/motd.yml 
cat motd.yml
cat files/motd.yml 
cat motd.yml
cat files/motd.yml 
vim motd.yml
ansible-playbook motd.yml
vim motd.yml
ls
cat inventory
ssh devops@serverb.lab.example.com
cat inventory 
ansible serverb.lab.example.com -m setup
lab file-review grade
ssh devops@serverb.lab.example.com
ls
cd file-review/
ls
mv motd.yml motd.yml.bak
cp files/motd.yml .
ansible-playbook motd.yml
vim motd.yml
rm mod.yml
rm motd.yml
mv motd.yml.bak motd.yml
vim motd.yml
ansible-playbook motd.yml
ls
lab file-review gradde
lab file-review grade
vim files/motd.yml 
lssss
ls
rm motd.yml
history | grep curl
curl https://raw.githubusercontent.com/tridims/ansible-notebook-scratchpad/main/file-review/motd.yml -o motd.yml
ansible-playbook motd.yml 
curl https://raw.githubusercontent.com/tridims/ansible-notebook-scratchpad/main/file-review/motd.yml -o motd.yml
ansible-playbook motd.yml 
ssh devops@lab.example.com
cat inventory
ssh serverb.lab.example.com
lab file-review grade
vim motd.yml
git clone https://github.com/netlab-filkom/review-1-tridims.git
ssh-keygen -t ed25519 -C "tri.dimas@student.ub.ac.id"
ssh-add ~/.ssh/id_ed25519
ls .ssh/
cat .ssh/id_ed25519.pub 
git clone git@github.com:netlab-filkom/review-1-tridims.git
cd ./ssh
ls
ls -la
cd .ssh/
ls
cat id_ed25519.pub 
cat .ssh/id_ed25519.pub 
history
git clone git@github.com:netlab-filkom/review-1-tridims.git
lab projects-host start
cd projects-host/
ls
cat ansible.cfg
cat inventory1
cat inventory2
ls
cat playbok.yml
cat playbook.yml
ansible db1.example.com -i inventory1 --list-hosts
ansible 172.25.252.44 -i inventory1 --list-hosts
ansible all -i inventory1 --list-hosts]
ansible all -i inventory1 --list-hosts
ansible '*.example.com' -i inventory1 --list-hsts
ansible '*.example.com' -i inventory1 --list-hosts
ansible '*.example.com, !*lab.example.com' -i inventory1 --list-hosts
ansible lb1.lab.example.com,s1.lab.example.com,db1.example.com -i inventory --list-hosts
ansible lb1.lab.example.com,s1.lab.example.com,db1.example.com -i inventory1 --list-hosts
ansible '172.25.*' -i inventory1 --list-hosts
ansible 's*' -i inventory1 --list-hosts
ansible 'prod,172*,*lab*' -i inventory1 --list-hosts
ansible 'db,&london' -i inventory1 --list-hosts
vim playbook.yml
ansible-playbook -i inventory2 playbook.yml 
vim playbook.yml
ansible-playbook -i inventory2 playbook.yml 
vim playbook.yml
ansible-playbook -i inventory2 playbook.yml 
