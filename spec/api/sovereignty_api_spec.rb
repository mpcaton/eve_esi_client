=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EveESIClient::SovereigntyApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SovereigntyApi' do
  before do
    # run before each test
    @instance = EveESIClient::SovereigntyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SovereigntyApi' do
    it 'should create an instance of SovereigntyApi' do
      expect(@instance).to be_instance_of(EveESIClient::SovereigntyApi)
    end
  end

  # unit tests for get_sovereignty_campaigns
  # List sovereignty campaigns
  # Shows sovereignty data for campaigns.  ---  This route is cached for up to 5 seconds
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetSovereigntyCampaigns200Ok>]
  describe 'get_sovereignty_campaigns test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sovereignty_map
  # List sovereignty of systems
  # Shows sovereignty information for solar systems  ---  This route is cached for up to 3600 seconds
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetSovereigntyMap200Ok>]
  describe 'get_sovereignty_map test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sovereignty_structures
  # List sovereignty structures
  # Shows sovereignty data for structures.  ---  This route is cached for up to 120 seconds
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetSovereigntyStructures200Ok>]
  describe 'get_sovereignty_structures test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
