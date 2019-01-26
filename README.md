# Solr docker image for Sunspot GEM

This is a docker image based on the official [Solr docker image](https://hub.docker.com/_/solr) pre-configured with schema files to support the 
[sunspot gem](https://github.com/sunspot/sunspot).


## Why

Sunspot uses [it's own schema](https://github.com/sunspot/sunspot/blob/master/sunspot_solr/solr/solr/configsets/sunspot/conf/schema.xml) 
that is not compatible with the default provided in the official Solr docker image.

See [Cannot reindex solr container](https://github.com/sunspot/sunspot/issues/916) for more information on this.

## Pre-configured core

This image pre-configures a core that should be ready to use.

## Fixes to the schema for Solr 7

<!-- Setting defaultSearchField in schema not supported since Solr 7 -->
<!-- <defaultSearchField>text</defaultSearchField> -->

<!-- Setting default operator in schema (solrQueryParser/@defaultOperator) not supported in Solr 7 -->
<!-- <solrQueryParser defaultOperator="AND"/> -->
