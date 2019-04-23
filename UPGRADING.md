To v1.4.2
---------
Upgrading to this version (especially from older version of Docker) can trigger a migration
for existing containers when the AUFS file system was used to store Docker images on. Normally,
this won't be a problem, as the migration is going to be performed automatically by Docker.

Please note that there can be a momentary performance impact due to data being moved in place
and new checksums being calculated to accommodate for the new format.

Should the process of automatic migration have failed and/or latest version of Docker would
refuse to start, then a manual removal of existing AUFS volume might be needed, before the
Docker service can be brought back into an operational state. Please keep in mind that this
would require images to be downloaded from the Docker Registry again, which might have an
impact both on the underlying service availability and performance of the host while the
containers are being downloaded.

For more details about storage and Docker images, please see the following:

  https://docs.docker.com/engine/userguide/storagedriver/imagesandcontainers/

To v1.3.0
---------
This version adds aufs support. Previously running docker containers will not be aware of this change and will need to be restarted manually.

    service docker restart
    
**NOTE:** This will kill any running containers, so you will have to start them up yourself afterwards. 
