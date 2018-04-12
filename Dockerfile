FROM node:latest
MAINTAINER KaMeHb-UA "marlock@etlgr.com"

# Installing keystone
RUN chmod 777 /usr/local/lib/node_modules /usr/local/bin
RUN useradd -m -d /cms cms
RUN echo "npm install enduro -g" | su - cms
RUN chmod 755 /usr/local/lib/node_modules /usr/local/bin
RUN echo "cd /cms && enduro create cms" | su - cms
RUN mkdir /cms1 && mv -v /cms/cms/* /cms1/ && rm -rf /cms/cms && mv -v /cms1/* /cms && rm -rf /cms1
# Assigning port
EXPOSE 3000

CMD ["bash", "-c", "echo 'cd /cms && enduro dev' | su -p - cms"]
