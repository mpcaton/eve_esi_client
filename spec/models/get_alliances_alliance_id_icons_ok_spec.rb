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

# Unit tests for EveESIClient::GetAlliancesAllianceIdIconsOk
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetAlliancesAllianceIdIconsOk' do
  before do
    # run before each test
    @instance = EveESIClient::GetAlliancesAllianceIdIconsOk.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetAlliancesAllianceIdIconsOk' do
    it 'should create an instance of GetAlliancesAllianceIdIconsOk' do
      expect(@instance).to be_instance_of(EveESIClient::GetAlliancesAllianceIdIconsOk)
    end
  end
  describe 'test attribute "px64x64"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "px128x128"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

