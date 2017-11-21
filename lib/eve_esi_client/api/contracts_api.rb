=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module EveESIClient
  class ContractsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get contracts
    # Returns contracts available to a character, only if the character is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".  ---  This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdContracts200Ok>]
    def get_characters_character_id_contracts(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_contracts_with_http_info(character_id, opts)
      return data
    end

    # Get contracts
    # Returns contracts available to a character, only if the character is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \&quot;in_progress\&quot;.  ---  This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdContracts200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdContracts200Ok> data, response status code and response headers
    def get_characters_character_id_contracts_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.get_characters_character_id_contracts ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling ContractsApi.get_characters_character_id_contracts"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/contracts/".sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdContracts200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_characters_character_id_contracts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get contract bids
    # Lists bids on a particular auction contract  ---  This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param contract_id ID of a contract
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdContractsContractIdBids200Ok>]
    def get_characters_character_id_contracts_contract_id_bids(character_id, contract_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_contracts_contract_id_bids_with_http_info(character_id, contract_id, opts)
      return data
    end

    # Get contract bids
    # Lists bids on a particular auction contract  ---  This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param contract_id ID of a contract
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdContractsContractIdBids200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdContractsContractIdBids200Ok> data, response status code and response headers
    def get_characters_character_id_contracts_contract_id_bids_with_http_info(character_id, contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.get_characters_character_id_contracts_contract_id_bids ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling ContractsApi.get_characters_character_id_contracts_contract_id_bids"
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.get_characters_character_id_contracts_contract_id_bids"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/contracts/{contract_id}/bids/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'contract_id' + '}', contract_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdContractsContractIdBids200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_characters_character_id_contracts_contract_id_bids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get contract items
    # Lists items of a particular contract  ---  This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param contract_id ID of a contract
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdContractsContractIdItems200Ok>]
    def get_characters_character_id_contracts_contract_id_items(character_id, contract_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_contracts_contract_id_items_with_http_info(character_id, contract_id, opts)
      return data
    end

    # Get contract items
    # Lists items of a particular contract  ---  This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param contract_id ID of a contract
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdContractsContractIdItems200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdContractsContractIdItems200Ok> data, response status code and response headers
    def get_characters_character_id_contracts_contract_id_items_with_http_info(character_id, contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.get_characters_character_id_contracts_contract_id_items ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling ContractsApi.get_characters_character_id_contracts_contract_id_items"
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.get_characters_character_id_contracts_contract_id_items"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/contracts/{contract_id}/items/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'contract_id' + '}', contract_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdContractsContractIdItems200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_characters_character_id_contracts_contract_id_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get coporation contracts
    # Returns contracts available to a coporation, only if the corporation is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".  ---  This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCorporationsCorporationIdContracts200Ok>]
    def get_corporations_corporation_id_contracts(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_contracts_with_http_info(corporation_id, opts)
      return data
    end

    # Get coporation contracts
    # Returns contracts available to a coporation, only if the corporation is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \&quot;in_progress\&quot;.  ---  This route is cached for up to 3600 seconds
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCorporationsCorporationIdContracts200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdContracts200Ok> data, response status code and response headers
    def get_corporations_corporation_id_contracts_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.get_corporations_corporation_id_contracts ..."
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling ContractsApi.get_corporations_corporation_id_contracts"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/corporations/{corporation_id}/contracts/".sub('{' + 'corporation_id' + '}', corporation_id.to_s)

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
        :return_type => 'Array<GetCorporationsCorporationIdContracts200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_corporations_corporation_id_contracts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get corporation contract bids
    # Lists bids on a particular auction contract  ---  This route is cached for up to 3600 seconds
    # @param contract_id ID of a contract
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCorporationsCorporationIdContractsContractIdBids200Ok>]
    def get_corporations_corporation_id_contracts_contract_id_bids(contract_id, corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_contracts_contract_id_bids_with_http_info(contract_id, corporation_id, opts)
      return data
    end

    # Get corporation contract bids
    # Lists bids on a particular auction contract  ---  This route is cached for up to 3600 seconds
    # @param contract_id ID of a contract
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCorporationsCorporationIdContractsContractIdBids200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdContractsContractIdBids200Ok> data, response status code and response headers
    def get_corporations_corporation_id_contracts_contract_id_bids_with_http_info(contract_id, corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.get_corporations_corporation_id_contracts_contract_id_bids ..."
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.get_corporations_corporation_id_contracts_contract_id_bids"
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling ContractsApi.get_corporations_corporation_id_contracts_contract_id_bids"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/corporations/{corporation_id}/contracts/{contract_id}/bids/".sub('{' + 'contract_id' + '}', contract_id.to_s).sub('{' + 'corporation_id' + '}', corporation_id.to_s)

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
        :return_type => 'Array<GetCorporationsCorporationIdContractsContractIdBids200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_corporations_corporation_id_contracts_contract_id_bids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get corporation contract items
    # Lists items of a particular contract  ---  This route is cached for up to 3600 seconds
    # @param contract_id ID of a contract
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCorporationsCorporationIdContractsContractIdItems200Ok>]
    def get_corporations_corporation_id_contracts_contract_id_items(contract_id, corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_contracts_contract_id_items_with_http_info(contract_id, corporation_id, opts)
      return data
    end

    # Get corporation contract items
    # Lists items of a particular contract  ---  This route is cached for up to 3600 seconds
    # @param contract_id ID of a contract
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCorporationsCorporationIdContractsContractIdItems200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdContractsContractIdItems200Ok> data, response status code and response headers
    def get_corporations_corporation_id_contracts_contract_id_items_with_http_info(contract_id, corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.get_corporations_corporation_id_contracts_contract_id_items ..."
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.get_corporations_corporation_id_contracts_contract_id_items"
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling ContractsApi.get_corporations_corporation_id_contracts_contract_id_items"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/corporations/{corporation_id}/contracts/{contract_id}/items/".sub('{' + 'contract_id' + '}', contract_id.to_s).sub('{' + 'corporation_id' + '}', corporation_id.to_s)

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
        :return_type => 'Array<GetCorporationsCorporationIdContractsContractIdItems200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_corporations_corporation_id_contracts_contract_id_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
