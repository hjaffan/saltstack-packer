{% set configs = salt['pillar.get']('conf') %}
/opt/spring-boot/configs.conf:
  file.managed:
    - user: "root"
    - group: "root"
    - contents: |
         {% for key, value in configs.items() %}{{ key }}={{ value }}
         {% endfor %}
