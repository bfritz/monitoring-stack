dev:
  group.present:
    - gid: 1010
  user.present:
    - fullname: Dev Account
    - shell: /bin/bash
    - home: /home/dev
    - uid: 1010
    - gid: 1010

/home/dev/bin:
  file.directory:
    - user: dev
    - group: dev
    - dir_mode: 700
