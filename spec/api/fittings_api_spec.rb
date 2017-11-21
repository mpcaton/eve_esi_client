=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EveESIClient::FittingsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FittingsApi' do
  before do
    # run before each test
    @instance = EveESIClient::FittingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FittingsApi' do
    it 'should create an instance of FittingsApi' do
      expect(@instance).to be_instance_of(EveESIClient::FittingsApi)
    end
  end

  # unit tests for delete_characters_character_id_fittings_fitting_id
  # Delete fitting
  # Delete a fitting from a character  --- 
  # @param character_id An EVE character ID
  # @param fitting_id ID for a fitting of this character
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_characters_character_id_fittings_fitting_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_fittings
  # Get fittings
  # Return fittings of a character  ---  This route is cached for up to 300 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdFittings200Ok>]
  describe 'get_characters_character_id_fittings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_characters_character_id_fittings
  # Create fitting
  # Save a new fitting for a character  --- 
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [PostCharactersCharacterIdFittingsFitting] :fitting Details about the new fitting
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [PostCharactersCharacterIdFittingsCreated]
  describe 'post_characters_character_id_fittings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
