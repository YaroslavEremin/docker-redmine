FROM redmine:latest

# Install Redmine draw.io plugin https://www.redmine.org/plugins/redmine_drawio
RUN cd plugins && \
    git clone https://github.com/mikitex70/redmine_drawio.git && \
    rm -rf redmine_drawio/.git
    
# Install Agile plugin https://www.redmineup.com/pages/help/agile/installing-redmine-agile-plugin-on-linux?utm_source=Main&utm_medium=email&utm_campaign=Download_plugin_email&utm_term=download_plugin_email&utm_content=installation_guide
ADD --chown=redmine:redmine redmine_agile.tar plugins/
RUN bundle install --without development test --no-deployment

# Add script with DB migrations
ADD --chown=redmine:redmine db-migrations.sh ./
RUN chmod 755 db-migrations.sh