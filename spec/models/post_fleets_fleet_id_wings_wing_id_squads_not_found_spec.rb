=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EveESIClient::PostFleetsFleetIdWingsWingIdSquadsNotFound
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostFleetsFleetIdWingsWingIdSquadsNotFound' do
  before do
    # run before each test
    @instance = EveESIClient::PostFleetsFleetIdWingsWingIdSquadsNotFound.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostFleetsFleetIdWingsWingIdSquadsNotFound' do
    it 'should create an instance of PostFleetsFleetIdWingsWingIdSquadsNotFound' do
      expect(@instance).to be_instance_of(EveESIClient::PostFleetsFleetIdWingsWingIdSquadsNotFound)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

