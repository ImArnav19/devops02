FROM openjdk:8

EXPOSE 8080

ADD target/devops-exp.jar devops-exp.jar

ENTRYPOINT ["java","-jar","/devops-exp.jar"]

