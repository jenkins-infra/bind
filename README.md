# DNS server for jenkins-ci.org

[![Build Status](https://ci.jenkins-ci.org/view/Infrastructure/job/Containers/job/infra_bind/badge/icon)](https://ci.jenkins-ci.org/job/Containers/infra_bind)

This container runs DNS server for jenkins-ci.org

The container expects the volume that gets mounted into `/etc/bind/local`, and this directory must have BIND configuration file named `named.conf.local` 
