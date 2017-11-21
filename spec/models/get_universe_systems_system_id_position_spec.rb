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

# Unit tests for EveESIClient::GetUniverseSystemsSystemIdPosition
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetUniverseSystemsSystemIdPosition' do
  before do
    # run before each test
    @instance = EveESIClient::GetUniverseSystemsSystemIdPosition.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetUniverseSystemsSystemIdPosition' do
    it 'should create an instance of GetUniverseSystemsSystemIdPosition' do
      expect(@instance).to be_instance_of(EveESIClient::GetUniverseSystemsSystemIdPosition)
    end
  end
  describe 'test attribute "x"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "y"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "z"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

