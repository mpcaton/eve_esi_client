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

# Unit tests for EveESIClient::GetFwLeaderboardsCorporationsKills
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetFwLeaderboardsCorporationsKills' do
  before do
    # run before each test
    @instance = EveESIClient::GetFwLeaderboardsCorporationsKills.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetFwLeaderboardsCorporationsKills' do
    it 'should create an instance of GetFwLeaderboardsCorporationsKills' do
      expect(@instance).to be_instance_of(EveESIClient::GetFwLeaderboardsCorporationsKills)
    end
  end
  describe 'test attribute "yesterday"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last_week"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "active_total"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

