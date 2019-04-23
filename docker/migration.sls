{% if 'lxc-docker' in salt['pkg.list_pkgs']() %}

docker-remove:
  pkg.purged:
     - name: lxc-docker

{% endif %}

