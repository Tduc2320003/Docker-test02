# Use the official Tomcat image as the base image
FROM tomcat:10-jdk17-openjdk-slim
# Remove the default ROOT and examples webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples

# Copy your application WAR file into the webapps directory
COPY ROOT.war /usr/local/tomcat/webapps/

# Optionally, if your application requires additional configurations or files,
# you can copy them into the container. For example:
# COPY config/some-config-file.xml /path/to/destination/in/container

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat using catalina.sh
CMD ["catalina.sh", "run"]
