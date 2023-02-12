FROM redmine:latest

# Install Redmine draw.io plugin https://www.redmine.org/plugins/redmine_drawio
ADD https://github.com/mikitex70/redmine_drawio/archive/refs/tags/v1.4.6.tar.gz /usr/src/redmine/plugins/
