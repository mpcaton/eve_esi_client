=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module EveESIClient
  class DogmaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get attributes
    # Get a list of dogma attribute ids  ---  This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_dogma_attributes(opts = {})
      data, _status_code, _headers = get_dogma_attributes_with_http_info(opts)
      return data
    end

    # Get attributes
    # Get a list of dogma attribute ids  ---  This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_dogma_attributes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_attributes ..."
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/dogma/attributes/"

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
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get attribute information
    # Get information on a dogma attribute  ---  This route expires daily at 11:05
    # @param attribute_id A dogma attribute ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetDogmaAttributesAttributeIdOk]
    def get_dogma_attributes_attribute_id(attribute_id, opts = {})
      data, _status_code, _headers = get_dogma_attributes_attribute_id_with_http_info(attribute_id, opts)
      return data
    end

    # Get attribute information
    # Get information on a dogma attribute  ---  This route expires daily at 11:05
    # @param attribute_id A dogma attribute ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetDogmaAttributesAttributeIdOk, Fixnum, Hash)>] GetDogmaAttributesAttributeIdOk data, response status code and response headers
    def get_dogma_attributes_attribute_id_with_http_info(attribute_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_attributes_attribute_id ..."
      end
      # verify the required parameter 'attribute_id' is set
      if @api_client.config.client_side_validation && attribute_id.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_id' when calling DogmaApi.get_dogma_attributes_attribute_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/dogma/attributes/{attribute_id}/".sub('{' + 'attribute_id' + '}', attribute_id.to_s)

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
        :return_type => 'GetDogmaAttributesAttributeIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_attributes_attribute_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get effects
    # Get a list of dogma effect ids  ---  This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_dogma_effects(opts = {})
      data, _status_code, _headers = get_dogma_effects_with_http_info(opts)
      return data
    end

    # Get effects
    # Get a list of dogma effect ids  ---  This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_dogma_effects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_effects ..."
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/dogma/effects/"

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
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_effects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get effect information
    # Get information on a dogma effect  ---  This route expires daily at 11:05
    # @param effect_id A dogma effect ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetDogmaEffectsEffectIdOk]
    def get_dogma_effects_effect_id(effect_id, opts = {})
      data, _status_code, _headers = get_dogma_effects_effect_id_with_http_info(effect_id, opts)
      return data
    end

    # Get effect information
    # Get information on a dogma effect  ---  This route expires daily at 11:05
    # @param effect_id A dogma effect ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetDogmaEffectsEffectIdOk, Fixnum, Hash)>] GetDogmaEffectsEffectIdOk data, response status code and response headers
    def get_dogma_effects_effect_id_with_http_info(effect_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_effects_effect_id ..."
      end
      # verify the required parameter 'effect_id' is set
      if @api_client.config.client_side_validation && effect_id.nil?
        fail ArgumentError, "Missing the required parameter 'effect_id' when calling DogmaApi.get_dogma_effects_effect_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v2/dogma/effects/{effect_id}/".sub('{' + 'effect_id' + '}', effect_id.to_s)

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
        :return_type => 'GetDogmaEffectsEffectIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_effects_effect_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
