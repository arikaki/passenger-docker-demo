# Use phusion/passenger-python310 as base image.
FROM phusion/passenger-python310:3.0.0

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

# Uncomment the features you want:
#
# Python support
RUN apt-get update && \
    apt-get install -y python3.10 python3.10-venv python3.10-dev python3-pip vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ...put your own build instructions here...

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

