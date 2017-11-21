=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EveESIClient::MarketApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MarketApi' do
  before do
    # run before each test
    @instance = EveESIClient::MarketApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MarketApi' do
    it 'should create an instance of MarketApi' do
      expect(@instance).to be_instance_of(EveESIClient::MarketApi)
    end
  end

  # unit tests for get_characters_character_id_orders
  # List orders from a character
  # List market orders placed by a character  ---  This route is cached for up to 3600 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdOrders200Ok>]
  describe 'get_characters_character_id_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_corporations_corporation_id_orders
  # List orders from a corporation
  # List market orders placed on behalf of a corporation  ---  This route is cached for up to 3600 seconds
  # @param corporation_id An EVE corporation ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :page Which page of results to return
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCorporationsCorporationIdOrders200Ok>]
  describe 'get_corporations_corporation_id_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_groups
  # Get item groups
  # Get a list of item groups  ---  This route expires daily at 11:05
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<Integer>]
  describe 'get_markets_groups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_groups_market_group_id
  # Get item group information
  # Get information on an item group  ---  This route expires daily at 11:05
  # @param market_group_id An Eve item group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :language Language to use in the response
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetMarketsGroupsMarketGroupIdOk]
  describe 'get_markets_groups_market_group_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_prices
  # List market prices
  # Return a list of prices  ---  This route is cached for up to 3600 seconds
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetMarketsPrices200Ok>]
  describe 'get_markets_prices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_region_id_history
  # List historical market statistics in a region
  # Return a list of historical market statistics for the specified type in a region  ---  This route is cached for up to 3600 seconds
  # @param region_id Return statistics in this region
  # @param type_id Return statistics for this type
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetMarketsRegionIdHistory200Ok>]
  describe 'get_markets_region_id_history test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_region_id_orders
  # List orders in a region
  # Return a list of orders in a region  ---  This route is cached for up to 300 seconds
  # @param order_type Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders.
  # @param region_id Return orders in this region
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :page Which page of results to return
  # @option opts [Integer] :type_id Return orders only for this type
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetMarketsRegionIdOrders200Ok>]
  describe 'get_markets_region_id_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_region_id_types
  # List type IDs relevant to a market
  # Return a list of type IDs that have active orders in the region, for efficient market indexing.  ---  This route is cached for up to 600 seconds
  # @param region_id Return statistics in this region
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :page Which page of results to return
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<Integer>]
  describe 'get_markets_region_id_types test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_markets_structures_structure_id
  # List orders in a structure
  # Return all orders in a structure  ---  This route is cached for up to 300 seconds
  # @param structure_id Return orders in this structure
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :page Which page of results to return
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetMarketsStructuresStructureId200Ok>]
  describe 'get_markets_structures_structure_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
