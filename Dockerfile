FROM java:7
WORKDIR home/root/javahelloworld
COPY src src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO bar
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

