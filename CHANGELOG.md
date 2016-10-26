## Version 1.5.0
* Update the default docker version to 1.9.1 ( as the latest available package in the time of commiting )
* Update docker-py package to the latest available version - 1.10.3

## Version 1.4.0
* Update the default docker version to 1.6.2

## Version 1.3.1
* Bump docker-py to version 1.2.2 this makes authenticating with private registries easier

## Version 1.3.0
* Install the aufs driver by default

## Version 1.2.0
* distribute docker public key with formula so that we don't have to query ubuntu key server

## Version 1.1.2
* Add missing dep on python-formula in metadata.yml

## Version 1.1.1
* reload_modules: reload salt modules

## Version 1.1.0
* install docker-py (adds python dependency)
* pinpoint docker version (default 1.5.0)

## Version 1.0.6
* hotfix (syntax)

## Version 1.0.5
* docker formula slightly reworked
* tests added
* docker.py client removed
   
## Version 1.0.4
* revert the root of docker runtime back to default

## Version 1.0.3
* pass -g /mnt/docker in upstart daemon to workaround this bug https://github.com/dotcloud/docker/issues/3611

## Version 1.0.2
* Use /mnt instead of /var for docker
* Removed kernel install, as it should be included in the base OS image
* removed docker pgp key

## Version 1.0.1
* This specifies a specific kernel version be installed
* This now requires a manual reboot step to complete kernel upgrade

## Version 1.0.0
* Added simple docker salt state for Ubuntu 12.04
