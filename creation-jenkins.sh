# Mise à jour des paquets
apt -y update
apt -y upgrade

# Installe Java 11
sudo apt -y install openjdk-11-jre

# Installe Jenkins
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt -y update
sudo apt -y install jenkins

useradd -m --system jenkins

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins