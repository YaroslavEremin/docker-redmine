FROM redmine:latest

# Install Redmine draw.io plugin https://www.redmine.org/plugins/redmine_drawio
RUN cd plugins && \
    git clone https://github.com/mikitex70/redmine_drawio.git && \
    rm -rf redmine_drawio/.git
    
