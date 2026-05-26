# encoding: utf-8
require 'nokogiri'
begin
  require 'yajl/json_gem'
rescue LoadError
  # ok not a big deal
  require 'json'
end

RSpec.configure do |c|
  # Stop after the first failure
  # c.fail_fast = true
  c.expect_with :rspec do |expectations|
    expectations.syntax = [:should, :expect]
  end
  c.mock_with :rspec do |mocks|
    mocks.syntax = [:should, :expect]
  end
end

$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'prismic'
