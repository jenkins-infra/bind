# DNS server for jenkins-ci.org

[![Build Status](https://ci.jenkins.io/job/Infra/job/bind/job/master/badge/icon)](https://ci.jenkins.io/job/Infra/job/bind/job/master/)

This container runs DNS server for jenkins-ci.org

The container expects the volume that gets mounted into `/etc/bind/local`, and this directory must have BIND configuration file named `named.conf.local` 
