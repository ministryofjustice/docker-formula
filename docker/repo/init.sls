docker_repo:
  pkgrepo.managed:
    - repo: 'deb https://apt.dockerproject.org/repo ubuntu-{{ grains.lsb_distrib_codename }} main'
    - file: '/etc/apt/sources.list.d/docker.list'
    - key_url: salt://docker/files/docker.key
old_docker_repo:
  pkgrepo.absent:
    - repo: 'deb https://get.docker.com/ubuntu docker main'
    - file: '/etc/apt/sources.list.d/docker.list'

