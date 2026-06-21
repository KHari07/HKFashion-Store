# 1. Start with a pre-built Tomcat 10 server running Java 21
FROM tomcat:10.1-jdk21

# 2. Clear out any default Tomcat placeholder pages
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copy your packed application into the server
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# 4. Open the port so Render can see it
EXPOSE 8080

# 5. The standard, clean command to run Tomcat
CMD ["catalina.sh", "run"]
