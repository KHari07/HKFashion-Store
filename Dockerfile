# 1. Start with a pre-built Tomcat 10 server
FROM tomcat:10.1-jdk17

# 2. Clear out any default Tomcat placeholder pages
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copy your packed application into the server
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# 4. Open the port so Render can see it
EXPOSE 8080

# 5. HACK: Start Tomcat in the background, wait 5 seconds, then print all hidden logs to the main screen!
CMD catalina.sh start && sleep 5 && tail -f /usr/local/tomcat/logs/*
