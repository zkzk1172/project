sudo yum update -y && sudo amazon-linux-extras install ansible2 -y
ansible -v
ansible --v
ansible --version
sudo ansible --version
clear
ansible localhost -m ping
ping www.google.com
clear
ping 172.31.13.73
ping 172.31.10.146
clear
for i in 172.31.13.73 172.31.10.146;do ping $i -c 3; done;
clear;
rm -rf .ssh/known_hosts
ssh-keyscan 172.31.3.58 >> .ssh/known_hosts
rm -rf .ssh/known_hosts
ssh-keyscan 172.31.13.73 >> .ssh/known_hosts
ssh-keyscan 172.31.10.146 >> .ssh/known_hosts
cat .ssh/known_hosts
clear
ssh-keygen -q -N "" -f test.pem
ls
cd
touch lab-iac-0205.pem
vim lab-iac-0205.pem
cat lab-iac-0205.pem
chmod 600 lab-iac-0205.pem
ls lab-iac-0205.pem -a
ls lab-iac-0205.pem -al
ssh -i lab-iac-0205.pem ec2-user@172.31.13.73 hostname
ssh -i lab-iac-0205.pem ec2-user@172.31.10.146 hostname
clear
for i in 172.31.10.146 172.31.13.73;do ssh -i lab-iac-0205.pem ec2-user@$i done;
for i in 172.31.10.146 172.31.13.73;do ssh -i lab-iac-0205.pem ec2-user@$i hostname; done;
clear
cd .ssh
ls
touch config
ls
vi config
cat config
ssh 172.31.13.73 hostname
chmod 600 config
ssh 172.31.13.73 hostname
ssh 172.31.13.73 ping
ssh 172.31.13.73 hostname
ssh 172.31.10.146 hostname
sudo yum update -y && sudo amazon-linux-extras install ansible2 -y
sudo ansible --v
sudo ansible --version
ansible localhost -m ping
clear
ansible localhost ping
ansible localhost -m  ping
ansible localhost -m setup
ansible localhost -m setup | grep "ansible_distribution"
ansible localhost -m setup | grep "ansible_distribution": "Amazon"
ansible localhost -m setup | grep "ansible_distribution: Amazon"
ansible localhost -m setup | grep "ansible_distribution"
ansible localhost -m setup | grep "ansible_pkg"
ansible localhost -m setup | grep "ansible_user"
ansible localhost -m setup | grep "ipv4"
clear
cd
clear
cat /etc/ansible
cat /etc/ansible/hosts
cd /etc/ansible/hosts
ls /etc/ansible/hosts
touch inv
ls
vi inv
clear
ansible all -i inv -m ping
ansible all -i inv -m setup | grep "ansible_distri"
ansible all -i inv -m setup | grep "ansible_dis"
ansible all -i inv -m setup | grep "pkg"
vi inv
ansible seoul -i inv -m setup | grep "pkg"
clear
ansible seoul -i inv -m setup | grep "pkg"
vi inv
ansible web -i inv -m setup | grep "pkg"
ansible seoul web -i inv -m setup | grep "pkg"
ansible seoul-web -i inv -m setup | grep "pkg"
ansible seoul-web -i inv -m ping
ansible seoul -i inv -m ping
ansible web -i inv -m ping
clear
ansible seoul -i inv -m shell -a hostname
clear
ansible seoul -i inv -m shell -a "yum -y install httpd"
ansible seoul -i inv -m shell -a "sudo yum -y install httpd"
ansible seoul -i inv -m shell -a "yum -y install httpd" --become
ansible seoul -i inv -m shell -a "systemctl restart httpd" --become
curl -L http://www.daum.net >> /var/www/html/index.html
ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html

ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html
ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html

ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html

ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html" --become

ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.naver.com >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.google.com >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "echo '' > /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.google.com >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "echo '' > /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.naver.com >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "echo '' > /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.daum.com >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "echo '' > /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "echo '' > /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.nexon.com >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "echo '' > /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "yum -y install httpd" --become
clear
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ansible seoul -i inv -m yum -a "name=httpd state=absent" --become
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ansible 
ansible seoul -i inv -m command -a "which httpd"
ansible seoul -i inv -m command -a "which httpd" --become
ansible seoul -i inv -m service -a "name=httpd status=start" --become
ansible seoul -i inv -m service -a "name=httpd status=started" --become
ansible seoul -i inv -m service -a "name=httpd state=started" --become
echo "<h2>HELLO ANSIBLE<h2>" > index.html
cat index.html
ansible seoul -i inv -m copy -a "src=index.html dest=/var/www/html/index.html" --become
clear
ansible seoul -i inv -m service -a "name=httpd state=stopped" --become
ansible seoul -i inv -m service -a "name=httpd state=absent" --become
ansible seoul -i inv -m yum -a "name=httpd state=absent" --become
ansible seoul -i inv -m command -a "which httpd" --become
clear
yum grouplist
clear
touch web.yml
ls
vi web.yml
cat web.yml
ansible-playbook web.yml -i inv
vi web.yml
clear
cat web.yml
echo "<h2>HOME<h2>" >> home.html
cat home.html
vi web.yml
cat web.yml
clear
ansible-playbook web.yml -i inv
vi web.yml
ansible-playbook web.yml -i inv
clear
ls
touch test3.pem
vi test3.pem
ls
ssh-keygen simple.pem
ssh-keygen -f simple.pem
ls
rm simple.pem
ls
rm simple.pem.pub
clear
vi test3.pem
touch lab-iac-0205-2.pem
vi lab-iac-0205-2.pem
vi config
ls
cd .ssh
ls
vi config
cd
ansible-playbook web.yml -i inv
vi inv
ansible-playbook web.yml -i inv
chmod 600 lab-iac-0205-2.pem
ansible-playbook web.yml -i inv
vi web.yml
echo "<h2>index<h2>" >> index.html
ls
vi web.yml
ansible-playbook web.yml -i inv
cat index.html
ls
ansible all -i inv -m ping
vi inv
ansible all -i inv -m ping
clear
cat inv
cd /.ssh
cd .ssh
ls
cat config
vi config
cd
clear
cat /etc/ansible/hosts
clear
vi web.yml
ansible-playbook web.yml -i inv
echo "alias anp='ansible-playbook'" >> ~/.bashrc
cat ~/.bashrc | grep alias
clear
source ~/.bashrc
anp localhost -m setup
anp web.yml -i inv
vi web.yml
anp web.yml -i inv
vi web.yml
anp web.yml -i inv
vi web.yml
anp web.yml -i inv
ansible seoul -m shell -a "cat /var/www/html/a.txt" --become
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
ansible seoul -i inv -m shell -a "ls /var/www/html/a.txt" --become
ansible seoul -i inv -m shell -a "ls /var/www/html/" --become
ansible seoul -i inv -m shell -a "rm /var/www/html/home.html" --become
ansible seoul -i inv -m shell -a "ls /var/www/html/" --become
ansible seoul -i inv -m shell -a "al /var/www/html/" --become
ansible seoul -i inv -m shell -a "al /var/www/html/a.txt" --become
clear
vi web.yml
anp web.yml -i inv
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
vi web.yml
cat web.yml
anp web.yml -i inv
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
clear
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
clear
vi web.yml
cat web.yml
anp web.yml -i inv
clear
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf" --become
clear
cat web.yml
clear
cat web.yml
netstat
clear
vi web.yml
cat web.yml
anp web.yml -i inv
clear
vi config
vi inv
sudo vi /etc/hosts
clear
zcxzvc
clear
touch local.yml
vi local.yml
cat local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
cat web.yml
clear
vi local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
anp local.yml
clear
touch vars.yml

cat vars.yml
vi local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
anp local.yml
vi local.yml
vi vars.yml
vi local.yml
vi vars.yml
vi local.yml
vi vars.yml
vi local.yml
vi vars.yml
anp local.yml
vi local.yml
anp local.yml
clear
ping 172.31.8.166
ping 172.31.13.221
ssh-keyscan 172.31.13.221
ssh-keyscan 172.31.13.221 >> ~/.ssh/konwn_hosts
ssh-keyscan 172.31.8.166 >> ~/.ssh/konwn_hosts
cat ~/.ssh/known_hosts
clear
vi ~/.ssh/config
vi web.yml
vi inv
ansible ubuntu  -i inv -m ping
clear
ansible ubuntu  -i inv -m ping
vi inv
ansible ubuntu  -i inv -m ping
vi inv
ansible ubuntu  -i inv -m ping
ansible amazon -i inv -m ping
clear
ansible amazon -i inv -m setup > amazon.txt
ansible ubuntu -i inv -m setup > ubuntu.txt
ls
cat ubuntu.txt
cat ubuntu.txt | grep ansible_pkg_mgr
cat amazon.txt | grep ansible_pkg_mgr
cat amazon.txt | grep ansible_distribution
cat ubuntu.txt | grep ansible_distribution
cat ubuntu.txt | grep ansible_distribution_version
cat amazon.txt | grep ansible_distribution_version
clear

vi webserver.yml
anp all -i inv webserver.yml
anp -i inv webserver.yml
vi webserver.yml
anp -i inv webserver.yml
vi webserver.yml
anp -i inv webserver.yml
vi webserver.yml
anp -i inv webserver.yml
vi webserver.yml
anp -i inv webserver.yml
vi webserver.yml
anp -i inv webserver.yml
vi webserver.yml
anp -i inv webserver.yml
clear
touch remove_webserver.yml
cat remove_webserver.yml
vi remove_webserver.yml
cat remove_webserver.yml
anp -i inv remove_webserver.yml
cat web.tml
cat web.yml
vi webserver.yml
clear
cp webserver.yml amazon.yml
cp webserver.yml ubuntu.yml
cp webserver.yml include_tasks_webserver.yml
vi amazon.yml
vi ubuntu.yml
rm  ubuntu.yml
rm ubuntu.yml
ls
cp webserver.yml ubuntu.yml
vi ubuntu.yml
vi include_tasks_webserver.yml
anp -i inv include_tasks_webserver.yml
clear
vi include_tasks_webserver.yml
anp -i inv remove_webserver.yml
clear
cp include_tasks_webserver.yml if_webserver.yml
vi if_webserver.yml
anp -i inv if_webserver.yml
vi if_webserver.yml
vi amazon.yml
vi if_webserver.yml
anp -i inv remove_webserver.yml
anp -i inv if_webserver.yml
vi if_webserver.yml
anp -i inv if_webserver.yml
vi if_webserver.yml
anp -i inv if_webserver.yml
vi if_webserver.yml
vi inv

anp -i inv remove_webserver.yml
anp -i inv if_webserver.yml
vi inv
cp if_webserver.yml
cp if_webserver.yml rm_webserver.yml
vi if_webserver.yml
anp -i inv remove_webserver.yml
anp -i inv if_webserver.yml
vi if_webserver.yml
anp -i inv if_webserver.yml
vi if_webserver.yml
vi amazon.yml
vi if_webserver.yml
anp -i inv if_webserver.yml
vi amazon.yml
vi if_webserver.yml
anp -i inv if_webserver.yml
