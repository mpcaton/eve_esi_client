=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module EveESIClient
  class MarketApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List orders from a character
    # List market orders placed by a character  ---  This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdOrders200Ok>]
    def get_characters_character_id_orders(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_orders_with_http_info(character_id, opts)
      return data
    end

    # List orders from a character
    # List market orders placed by a character  ---  This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdOrders200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdOrders200Ok> data, response status code and response headers
    def get_characters_character_id_orders_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_characters_character_id_orders ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MarketApi.get_characters_character_id_orders"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/orders/".sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCharactersCharacterIdOrders200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_characters_character_id_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List orders from a corporation
    # List market orders placed on behalf of a corporation  ---  This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCorporationsCorporationIdOrders200Ok>]
    def get_corporations_corporation_id_orders(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_orders_with_http_info(corporation_id, opts)
      return data
    end

    # List orders from a corporation
    # List market orders placed on behalf of a corporation  ---  This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCorporationsCorporationIdOrders200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdOrders200Ok> data, response status code and response headers
    def get_corporations_corporation_id_orders_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_corporations_corporation_id_orders ..."
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling MarketApi.get_corporations_corporation_id_orders"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/corporations/{corporation_id}/orders/".sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCorporationsCorporationIdOrders200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_corporations_corporation_id_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get item groups
    # Get a list of item groups  ---  This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_markets_groups(opts = {})
      data, _status_code, _headers = get_markets_groups_with_http_info(opts)
      return data
    end

    # Get item groups
    # Get a list of item groups  ---  This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_markets_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_markets_groups ..."
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/markets/groups/"

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_markets_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get item group information
    # Get information on an item group  ---  This route expires daily at 11:05
    # @param market_group_id An Eve item group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :language Language to use in the response (default to en-us)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetMarketsGroupsMarketGroupIdOk]
    def get_markets_groups_market_group_id(market_group_id, opts = {})
      data, _status_code, _headers = get_markets_groups_market_group_id_with_http_info(market_group_id, opts)
      return data
    end

    # Get item group information
    # Get information on an item group  ---  This route expires daily at 11:05
    # @param market_group_id An Eve item group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :language Language to use in the response
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetMarketsGroupsMarketGroupIdOk, Fixnum, Hash)>] GetMarketsGroupsMarketGroupIdOk data, response status code and response headers
    def get_markets_groups_market_group_id_with_http_info(market_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_markets_groups_market_group_id ..."
      end
      # verify the required parameter 'market_group_id' is set
      if @api_client.config.client_side_validation && market_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'market_group_id' when calling MarketApi.get_markets_groups_market_group_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && opts[:'language'] && !['de', 'en-us', 'fr', 'ja', 'ru', 'zh'].include?(opts[:'language'])
        fail ArgumentError, 'invalid value for "language", must be one of de, en-us, fr, ja, ru, zh'
      end
      # resource path
      local_var_path = "/v1/markets/groups/{market_group_id}/".sub('{' + 'market_group_id' + '}', market_group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetMarketsGroupsMarketGroupIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_markets_groups_market_group_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List market prices
    # Return a list of prices  ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetMarketsPrices200Ok>]
    def get_markets_prices(opts = {})
      data, _status_code, _headers = get_markets_prices_with_http_info(opts)
      return data
    end

    # List market prices
    # Return a list of prices  ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetMarketsPrices200Ok>, Fixnum, Hash)>] Array<GetMarketsPrices200Ok> data, response status code and response headers
    def get_markets_prices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_markets_prices ..."
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/markets/prices/"

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetMarketsPrices200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_markets_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List historical market statistics in a region
    # Return a list of historical market statistics for the specified type in a region  ---  This route is cached for up to 3600 seconds
    # @param region_id Return statistics in this region
    # @param type_id Return statistics for this type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetMarketsRegionIdHistory200Ok>]
    def get_markets_region_id_history(region_id, type_id, opts = {})
      data, _status_code, _headers = get_markets_region_id_history_with_http_info(region_id, type_id, opts)
      return data
    end

    # List historical market statistics in a region
    # Return a list of historical market statistics for the specified type in a region  ---  This route is cached for up to 3600 seconds
    # @param region_id Return statistics in this region
    # @param type_id Return statistics for this type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetMarketsRegionIdHistory200Ok>, Fixnum, Hash)>] Array<GetMarketsRegionIdHistory200Ok> data, response status code and response headers
    def get_markets_region_id_history_with_http_info(region_id, type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_markets_region_id_history ..."
      end
      # verify the required parameter 'region_id' is set
      if @api_client.config.client_side_validation && region_id.nil?
        fail ArgumentError, "Missing the required parameter 'region_id' when calling MarketApi.get_markets_region_id_history"
      end
      # verify the required parameter 'type_id' is set
      if @api_client.config.client_side_validation && type_id.nil?
        fail ArgumentError, "Missing the required parameter 'type_id' when calling MarketApi.get_markets_region_id_history"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/markets/{region_id}/history/".sub('{' + 'region_id' + '}', region_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'type_id'] = type_id
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetMarketsRegionIdHistory200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_markets_region_id_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List orders in a region
    # Return a list of orders in a region  ---  This route is cached for up to 300 seconds
    # @param order_type Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders.
    # @param region_id Return orders in this region
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [Integer] :type_id Return orders only for this type
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetMarketsRegionIdOrders200Ok>]
    def get_markets_region_id_orders(order_type, region_id, opts = {})
      data, _status_code, _headers = get_markets_region_id_orders_with_http_info(order_type, region_id, opts)
      return data
    end

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
    # @return [Array<(Array<GetMarketsRegionIdOrders200Ok>, Fixnum, Hash)>] Array<GetMarketsRegionIdOrders200Ok> data, response status code and response headers
    def get_markets_region_id_orders_with_http_info(order_type, region_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_markets_region_id_orders ..."
      end
      # verify the required parameter 'order_type' is set
      if @api_client.config.client_side_validation && order_type.nil?
        fail ArgumentError, "Missing the required parameter 'order_type' when calling MarketApi.get_markets_region_id_orders"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['buy', 'sell', 'all'].include?(order_type)
        fail ArgumentError, "invalid value for 'order_type', must be one of buy, sell, all"
      end
      # verify the required parameter 'region_id' is set
      if @api_client.config.client_side_validation && region_id.nil?
        fail ArgumentError, "Missing the required parameter 'region_id' when calling MarketApi.get_markets_region_id_orders"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/markets/{region_id}/orders/".sub('{' + 'region_id' + '}', region_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'order_type'] = order_type
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'type_id'] = opts[:'type_id'] if !opts[:'type_id'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetMarketsRegionIdOrders200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_markets_region_id_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List type IDs relevant to a market
    # Return a list of type IDs that have active orders in the region, for efficient market indexing.  ---  This route is cached for up to 600 seconds
    # @param region_id Return statistics in this region
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_markets_region_id_types(region_id, opts = {})
      data, _status_code, _headers = get_markets_region_id_types_with_http_info(region_id, opts)
      return data
    end

    # List type IDs relevant to a market
    # Return a list of type IDs that have active orders in the region, for efficient market indexing.  ---  This route is cached for up to 600 seconds
    # @param region_id Return statistics in this region
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_markets_region_id_types_with_http_info(region_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_markets_region_id_types ..."
      end
      # verify the required parameter 'region_id' is set
      if @api_client.config.client_side_validation && region_id.nil?
        fail ArgumentError, "Missing the required parameter 'region_id' when calling MarketApi.get_markets_region_id_types"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/markets/{region_id}/types/".sub('{' + 'region_id' + '}', region_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_markets_region_id_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List orders in a structure
    # Return all orders in a structure  ---  This route is cached for up to 300 seconds
    # @param structure_id Return orders in this structure
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetMarketsStructuresStructureId200Ok>]
    def get_markets_structures_structure_id(structure_id, opts = {})
      data, _status_code, _headers = get_markets_structures_structure_id_with_http_info(structure_id, opts)
      return data
    end

    # List orders in a structure
    # Return all orders in a structure  ---  This route is cached for up to 300 seconds
    # @param structure_id Return orders in this structure
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetMarketsStructuresStructureId200Ok>, Fixnum, Hash)>] Array<GetMarketsStructuresStructureId200Ok> data, response status code and response headers
    def get_markets_structures_structure_id_with_http_info(structure_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_markets_structures_structure_id ..."
      end
      # verify the required parameter 'structure_id' is set
      if @api_client.config.client_side_validation && structure_id.nil?
        fail ArgumentError, "Missing the required parameter 'structure_id' when calling MarketApi.get_markets_structures_structure_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/markets/structures/{structure_id}/".sub('{' + 'structure_id' + '}', structure_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetMarketsStructuresStructureId200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_markets_structures_structure_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
