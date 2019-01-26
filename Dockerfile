FROM solr:7.6-alpine

USER root

COPY schema.xml /opt/solr/server/solr/configsets/_default/conf/schema.xml
COPY solrconfig.xml /opt/solr/server/solr/configsets/_default/conf/solrconfig.xml

RUN chown solr:solr /opt/solr/server/solr/configsets/_default/conf/*.xml
RUN chmod 0644 /opt/solr/server/solr/configsets/_default/conf/*.xml

USER solr

ENTRYPOINT ["docker-entrypoint.sh", "solr-precreate", "development"]
