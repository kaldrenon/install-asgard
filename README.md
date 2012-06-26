### Intall Asgard Quickly ###

This simple package includes the requisite files to install Asgard on an Ubuntu instance (only tested on 12.04):
 - The Asgard .war file
 - The Tomcat package
 - Java 6 SE

Note: currently it contains the files as opposed to containing wget or other calls. This is for my own convenience. If there is interest I will add intelligence to it.

### To install: ###

    git clone http://github.com/kaldrenon/install-asgard.git
    cd install-asgard
    chmod a+x install-asgard.sh
    ./install-asgard.sh
