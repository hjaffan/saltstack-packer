{% set env = salt['environ.get']('ENV') %}
{% set app = salt['environ.get']('APP') %}
{% set version = salt['environ.get']('VERSION') %}
{% set grainList = [('env', env), ('app', app), ('version', version)] %}

{% for key, value in grainList %}
set-grains-{{ key }}:
  grains.present:
    - name: {{ key }}
    - value: {{ value }}
    - force: True
{% endfor %}
