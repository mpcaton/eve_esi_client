=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module EveESIClient
  class MailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a mail label
    # Delete a mail label  --- 
    # @param character_id An EVE character ID
    # @param label_id An EVE label id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def delete_characters_character_id_mail_labels_label_id(character_id, label_id, opts = {})
      delete_characters_character_id_mail_labels_label_id_with_http_info(character_id, label_id, opts)
      return nil
    end

    # Delete a mail label
    # Delete a mail label  --- 
    # @param character_id An EVE character ID
    # @param label_id An EVE label id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_characters_character_id_mail_labels_label_id_with_http_info(character_id, label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.delete_characters_character_id_mail_labels_label_id ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.delete_characters_character_id_mail_labels_label_id"
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling MailApi.delete_characters_character_id_mail_labels_label_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/mail/labels/{label_id}/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'label_id' + '}', label_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#delete_characters_character_id_mail_labels_label_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a mail
    # Delete a mail  --- 
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def delete_characters_character_id_mail_mail_id(character_id, mail_id, opts = {})
      delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)
      return nil
    end

    # Delete a mail
    # Delete a mail  --- 
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.delete_characters_character_id_mail_mail_id ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.delete_characters_character_id_mail_mail_id"
      end
      # verify the required parameter 'mail_id' is set
      if @api_client.config.client_side_validation && mail_id.nil?
        fail ArgumentError, "Missing the required parameter 'mail_id' when calling MailApi.delete_characters_character_id_mail_mail_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/mail/{mail_id}/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'mail_id' + '}', mail_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#delete_characters_character_id_mail_mail_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return mail headers
    # Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Array<Integer>] :labels Fetch only mails that match one or more of the given labels
    # @option opts [Integer] :last_mail_id List only mail with an ID lower than the given ID, if present
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdMail200Ok>]
    def get_characters_character_id_mail(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_with_http_info(character_id, opts)
      return data
    end

    # Return mail headers
    # Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Array<Integer>] :labels Fetch only mails that match one or more of the given labels
    # @option opts [Integer] :last_mail_id List only mail with an ID lower than the given ID, if present
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdMail200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdMail200Ok> data, response status code and response headers
    def get_characters_character_id_mail_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'labels'].nil? && opts[:'labels'].length > 25
        fail ArgumentError, 'invalid value for "opts[:"labels"]" when calling MailApi.get_characters_character_id_mail, number of items must be less than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'labels'].nil? && opts[:'labels'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"labels"]" when calling MailApi.get_characters_character_id_mail, number of items must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/v1/characters/{character_id}/mail/".sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'labels'] = @api_client.build_collection_param(opts[:'labels'], :csv) if !opts[:'labels'].nil?
      query_params[:'last_mail_id'] = opts[:'last_mail_id'] if !opts[:'last_mail_id'].nil?
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
        :return_type => 'Array<GetCharactersCharacterIdMail200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get mail labels and unread counts
    # Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetCharactersCharacterIdMailLabelsOk]
    def get_characters_character_id_mail_labels(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_labels_with_http_info(character_id, opts)
      return data
    end

    # Get mail labels and unread counts
    # Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetCharactersCharacterIdMailLabelsOk, Fixnum, Hash)>] GetCharactersCharacterIdMailLabelsOk data, response status code and response headers
    def get_characters_character_id_mail_labels_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail_labels ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail_labels"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v3/characters/{character_id}/mail/labels/".sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'GetCharactersCharacterIdMailLabelsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return mailing list subscriptions
    # Return all mailing lists that the character is subscribed to  ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdMailLists200Ok>]
    def get_characters_character_id_mail_lists(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_lists_with_http_info(character_id, opts)
      return data
    end

    # Return mailing list subscriptions
    # Return all mailing lists that the character is subscribed to  ---  This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdMailLists200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdMailLists200Ok> data, response status code and response headers
    def get_characters_character_id_mail_lists_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail_lists ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail_lists"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/mail/lists/".sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdMailLists200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a mail
    # Return the contents of an EVE mail  ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetCharactersCharacterIdMailMailIdOk]
    def get_characters_character_id_mail_mail_id(character_id, mail_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)
      return data
    end

    # Return a mail
    # Return the contents of an EVE mail  ---  This route is cached for up to 30 seconds
    # @param character_id An EVE character ID
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetCharactersCharacterIdMailMailIdOk, Fixnum, Hash)>] GetCharactersCharacterIdMailMailIdOk data, response status code and response headers
    def get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.get_characters_character_id_mail_mail_id ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.get_characters_character_id_mail_mail_id"
      end
      # verify the required parameter 'mail_id' is set
      if @api_client.config.client_side_validation && mail_id.nil?
        fail ArgumentError, "Missing the required parameter 'mail_id' when calling MailApi.get_characters_character_id_mail_mail_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/mail/{mail_id}/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'mail_id' + '}', mail_id.to_s)

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
        :return_type => 'GetCharactersCharacterIdMailMailIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#get_characters_character_id_mail_mail_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a new mail
    # Create and send a new mail  --- 
    # @param character_id An EVE character ID
    # @param mail The mail to send
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Integer]
    def post_characters_character_id_mail(character_id, mail, opts = {})
      data, _status_code, _headers = post_characters_character_id_mail_with_http_info(character_id, mail, opts)
      return data
    end

    # Send a new mail
    # Create and send a new mail  --- 
    # @param character_id An EVE character ID
    # @param mail The mail to send
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def post_characters_character_id_mail_with_http_info(character_id, mail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.post_characters_character_id_mail ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.post_characters_character_id_mail"
      end
      # verify the required parameter 'mail' is set
      if @api_client.config.client_side_validation && mail.nil?
        fail ArgumentError, "Missing the required parameter 'mail' when calling MailApi.post_characters_character_id_mail"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/mail/".sub('{' + 'character_id' + '}', character_id.to_s)

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
      post_body = @api_client.object_to_http_body(mail)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#post_characters_character_id_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a mail label
    # Create a mail label  --- 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [PostCharactersCharacterIdMailLabelsLabel] :label Label to create
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Integer]
    def post_characters_character_id_mail_labels(character_id, opts = {})
      data, _status_code, _headers = post_characters_character_id_mail_labels_with_http_info(character_id, opts)
      return data
    end

    # Create a mail label
    # Create a mail label  --- 
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [PostCharactersCharacterIdMailLabelsLabel] :label Label to create
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def post_characters_character_id_mail_labels_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.post_characters_character_id_mail_labels ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.post_characters_character_id_mail_labels"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v2/characters/{character_id}/mail/labels/".sub('{' + 'character_id' + '}', character_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'label'])
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#post_characters_character_id_mail_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update metadata about a mail
    # Update metadata about a mail  --- 
    # @param character_id An EVE character ID
    # @param contents Data used to update the mail
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def put_characters_character_id_mail_mail_id(character_id, contents, mail_id, opts = {})
      put_characters_character_id_mail_mail_id_with_http_info(character_id, contents, mail_id, opts)
      return nil
    end

    # Update metadata about a mail
    # Update metadata about a mail  --- 
    # @param character_id An EVE character ID
    # @param contents Data used to update the mail
    # @param mail_id An EVE mail ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_characters_character_id_mail_mail_id_with_http_info(character_id, contents, mail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MailApi.put_characters_character_id_mail_mail_id ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling MailApi.put_characters_character_id_mail_mail_id"
      end
      # verify the required parameter 'contents' is set
      if @api_client.config.client_side_validation && contents.nil?
        fail ArgumentError, "Missing the required parameter 'contents' when calling MailApi.put_characters_character_id_mail_mail_id"
      end
      # verify the required parameter 'mail_id' is set
      if @api_client.config.client_side_validation && mail_id.nil?
        fail ArgumentError, "Missing the required parameter 'mail_id' when calling MailApi.put_characters_character_id_mail_mail_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/mail/{mail_id}/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'mail_id' + '}', mail_id.to_s)

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
      post_body = @api_client.object_to_http_body(contents)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailApi#put_characters_character_id_mail_mail_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
