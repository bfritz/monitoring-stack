cyanite-git:
  git.latest:
    - name: https://github.com/pyr/cyanite.git
    - rev: master
    - target: /home/dev/src/cyanite
    - user: dev

/etc/cyanite.yaml:
  file.managed:
    - source: salt://cyanite/cyanite.yaml
    - user: dev
    - group: dev
    - mode: 0644

/var/log/cyanite:
  file.directory:
    - user: dev
    - group: dev
    - mode: 0700

cyanite-uberjar:
  cmd.run:
    - name: lein uberjar
    - user: dev
    - group: dev
    - cwd: /home/dev/src/cyanite
    - unless: test -e target/cyanite-*-standalone.jar
