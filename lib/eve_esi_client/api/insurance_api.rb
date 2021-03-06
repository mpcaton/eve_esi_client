=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module EveESIClient
  class InsuranceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List insurance levels
    # Return available insurance levels for all ship types  ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :language Language to use in the response (default to en-us)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetInsurancePrices200Ok>]
    def get_insurance_prices(opts = {})
      data, _status_code, _headers = get_insurance_prices_with_http_info(opts)
      return data
    end

    # List insurance levels
    # Return available insurance levels for all ship types  ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :language Language to use in the response
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetInsurancePrices200Ok>, Fixnum, Hash)>] Array<GetInsurancePrices200Ok> data, response status code and response headers
    def get_insurance_prices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InsuranceApi.get_insurance_prices ..."
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && opts[:'language'] && !['de', 'en-us', 'fr', 'ja', 'ru', 'zh'].include?(opts[:'language'])
        fail ArgumentError, 'invalid value for "language", must be one of de, en-us, fr, ja, ru, zh'
      end
      # resource path
      local_var_path = "/v1/insurance/prices/"

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
        :return_type => 'Array<GetInsurancePrices200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InsuranceApi#get_insurance_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
