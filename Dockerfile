FROM beginor/ubuntu-china:16.04

LABEL MAINTAINER="beginor <beginor@qq.com>"

# Install mono from xamarin then cleanup.
RUN /tmp/install.sh

# Default command
CMD [ "mono", "--version" ]
