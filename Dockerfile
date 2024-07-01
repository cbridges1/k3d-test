FROM openjdk:22
# RUN wget -c https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -P /tmp
# RUN apt install unzip
# RUN ./gradlew build
# RUN unzip -d /opt/gradle /tmp/gradle-*.zip
# RUN nano /etc/profile.d/gradle.sh export PATH=/opt/gradle/gradle-7.4.2/bin:$PATH
# RUN chmod +x /etc/profile.d/gradle.sh
# RUN source /etc/profile.d/gradle.sh
# USER spring:spring
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]