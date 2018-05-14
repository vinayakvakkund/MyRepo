returnval=`wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -`

if [ $returnval -eq "ok" ]
then

echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl start jenkins
sudo ufw allow 8080
sudo ufw status

fi
