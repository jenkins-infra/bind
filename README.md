# DNS server for jenkins-ci.org

[Repository Archived] If you want this repository to be updated, please contact us with the instructions at https://www.jenkins.io/chat/#jenkins-infra.

This container runs DNS server for jenkins-ci.org

The container expects the volume that gets mounted into `/etc/bind/local`, and this directory must have BIND configuration file named `named.conf.local` 
