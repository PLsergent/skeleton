#!/bin/bash

# Check if user already exist
if [[ "$(grep -c '^app-dev:' /etc/passwd)" = 0 ]]
then
# If not it creates the user app-dev
    useradd -m -s /bin/bash -U app-dev -u 666
    cp -pr /home/vagrant/.ssh /home/app-dev/
    chown -R app-dev:app-dev /home/app-dev
    echo "%app-dev ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/app-dev
else
    echo "User app-dev already exists."
fi