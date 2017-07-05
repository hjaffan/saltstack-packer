/opt/springboot:
  file.directory:
    - user: springboot
    - group: springboot
    - mode: 755
    - makedirs: True

/opt/springboot/helloworld-spring-2.0.jar:
  file.managed:
    - source: salt://spring/files/helloworld-spring-2.0.jar
    
