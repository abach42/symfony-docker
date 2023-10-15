FROM alpine:latest

# install openssh-client package in the Alpine Linux image.
RUN apk --update --no-cache add openssh-client

# create a directory at /root/.ssh in the container.
RUN mkdir -p /root/.ssh

# Set up SSH agent forwarding
RUN echo "ForwardAgent yes" >> /root/.ssh/config

# sets ssh-agent -s as the default command to be run when the container starts.
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]