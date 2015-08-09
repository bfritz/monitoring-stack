lein-git:
  git.latest:
    - name: https://github.com/technomancy/leiningen.git
    - rev: 2.5.2
    - target: /home/dev/src/leiningen
    - user: dev

/home/dev/bin/lein:
  file.copy:
    - source: /home/dev/src/leiningen/bin/lein
    - user: dev
    - group: dev
    - mode: 0755
