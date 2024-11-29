# Use AlmaLinux 8 as the base image
FROM almalinux:8

# Install Apache (httpd) web server
RUN yum install -y httpd && yum clean all

# Create a directory for serving the image
RUN mkdir -p /home/ubuntu/

# Copy your downloaded image into the container
# Replace "education-lettering.jpg" with the actual file name
COPY  AmzdkG9.jpg /home/ubuntu/
COPY uwp4570280.jpeg /home/ubuntu/

COPY uwp4570284.jpeg /home/ubuntu/

# Expose port 80 to allow web access
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]