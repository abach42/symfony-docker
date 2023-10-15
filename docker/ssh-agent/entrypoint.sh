#!/bin/sh

eval $(ssh-agent -s)
ssh-add /root/.ssh/${SSH_KEY_NAME}

# Start a shell or any other command you want to run
exec "$@"

# Keep the container running
# tail -f /dev/null