# DNS server for jenkins-ci.org
[![Build Status](http://ci.jenkins-ci.org/view/Infrastructure/job/infra_bind/badge/icon)](http://ci.jenkins-ci.org/view/Infrastructure/job/infra_bind/)

This container runs DNS server for jenkins-ci.org

The container expects the volume that gets mounted into `/etc/bind/local`, and this directory must have BIND configuration file named `named.conf.local` 
