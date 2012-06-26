# Install java
chmod +x jdk-6u32-linux-x64.bin
./jdk-6u32-linux-x64.bin
sudo mkdir -p /usr/lib/jvm/jdk1.6.0_32
sudo mv jdk1.6.0_32/* /usr/lib/jvm/jdk1.6.0_32

sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.6.0_32/bin/javac 1
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.6.0_32/bin/java 1
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk1.6.0_32/bin/javaws 1

sudo update-alternatives --config javac
sudo update-alternatives --config java
sudo update-alternatives --config javaws

#Install tomcat
tar -xvf apache-tomcat-7.0.28.tar.gz
mv apache-tomcat-7.0.28 tomcat
mv server.xml tomcat/conf
mv setenv.sh tomcat/bin
rm -rf tomcat/webapps/*
cd tomcat/webapps
wget https://github.com/downloads/Netflix/asgard/asgard.war

mkdir -p $HOME/.asgard
mv Config.groovy $HOME/.asgard

cd ..
bin/startup.sh
