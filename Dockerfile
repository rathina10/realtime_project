# Use AlmaLinux 8 as the base image
FROM almalinux:8

# Install Apache (httpd) web server
RUN yum install -y httpd && yum clean all

# Create a directory for serving the image
# Use the standard Apache web directory instead of /home/ubuntu/
RUN mkdir -p /home/ubuntu

# Expose port 80 to allow web access
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]



