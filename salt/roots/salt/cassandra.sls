base:
  pkgrepo.managed:
    - comments: Apache Cassandra
    - name: deb http://www.apache.org/dist/cassandra/debian 22x main
    - file: /etc/apt/sources.list.d/asf-cassandra.list
    - keyid: 0353B12C
    - keyserver: pgp.mit.edu
    - require_in:
      - pkg: cassandra

cassandra:
  pkg:
    - installed
