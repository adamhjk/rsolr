require 'rubygems'
require 'spec'
require File.join(File.dirname(__FILE__), "canned_solr_responses")

require File.join(File.dirname(__FILE__), '..', 'lib', 'rsolr')

RSolr::Adapter::HTTP.send(:include, CannedSolrResponses)
begin
  RSolr::Adapter::Direct.send(:include, CannedSolrResponses)
rescue RuntimeError
end
