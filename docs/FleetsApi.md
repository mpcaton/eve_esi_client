# EveESIClient::FleetsApi

All URIs are relative to *https://esi.tech.ccp.is*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_fleets_fleet_id_members_member_id**](FleetsApi.md#delete_fleets_fleet_id_members_member_id) | **DELETE** /v1/fleets/{fleet_id}/members/{member_id}/ | Kick fleet member
[**delete_fleets_fleet_id_squads_squad_id**](FleetsApi.md#delete_fleets_fleet_id_squads_squad_id) | **DELETE** /v1/fleets/{fleet_id}/squads/{squad_id}/ | Delete fleet squad
[**delete_fleets_fleet_id_wings_wing_id**](FleetsApi.md#delete_fleets_fleet_id_wings_wing_id) | **DELETE** /v1/fleets/{fleet_id}/wings/{wing_id}/ | Delete fleet wing
[**get_characters_character_id_fleet**](FleetsApi.md#get_characters_character_id_fleet) | **GET** /v1/characters/{character_id}/fleet/ | Get character fleet info
[**get_fleets_fleet_id**](FleetsApi.md#get_fleets_fleet_id) | **GET** /v1/fleets/{fleet_id}/ | Get fleet information
[**get_fleets_fleet_id_members**](FleetsApi.md#get_fleets_fleet_id_members) | **GET** /v1/fleets/{fleet_id}/members/ | Get fleet members
[**get_fleets_fleet_id_wings**](FleetsApi.md#get_fleets_fleet_id_wings) | **GET** /v1/fleets/{fleet_id}/wings/ | Get fleet wings
[**post_fleets_fleet_id_members**](FleetsApi.md#post_fleets_fleet_id_members) | **POST** /v1/fleets/{fleet_id}/members/ | Create fleet invitation
[**post_fleets_fleet_id_wings**](FleetsApi.md#post_fleets_fleet_id_wings) | **POST** /v1/fleets/{fleet_id}/wings/ | Create fleet wing
[**post_fleets_fleet_id_wings_wing_id_squads**](FleetsApi.md#post_fleets_fleet_id_wings_wing_id_squads) | **POST** /v1/fleets/{fleet_id}/wings/{wing_id}/squads/ | Create fleet squad
[**put_fleets_fleet_id**](FleetsApi.md#put_fleets_fleet_id) | **PUT** /v1/fleets/{fleet_id}/ | Update fleet
[**put_fleets_fleet_id_members_member_id**](FleetsApi.md#put_fleets_fleet_id_members_member_id) | **PUT** /v1/fleets/{fleet_id}/members/{member_id}/ | Move fleet member
[**put_fleets_fleet_id_squads_squad_id**](FleetsApi.md#put_fleets_fleet_id_squads_squad_id) | **PUT** /v1/fleets/{fleet_id}/squads/{squad_id}/ | Rename fleet squad
[**put_fleets_fleet_id_wings_wing_id**](FleetsApi.md#put_fleets_fleet_id_wings_wing_id) | **PUT** /v1/fleets/{fleet_id}/wings/{wing_id}/ | Rename fleet wing


# **delete_fleets_fleet_id_members_member_id**
> delete_fleets_fleet_id_members_member_id(fleet_id, member_id, opts)

Kick fleet member

Kick a fleet member  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

member_id = 56 # Integer | The character ID of a member in this fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Kick fleet member
  api_instance.delete_fleets_fleet_id_members_member_id(fleet_id, member_id, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->delete_fleets_fleet_id_members_member_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **member_id** | **Integer**| The character ID of a member in this fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_fleets_fleet_id_squads_squad_id**
> delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, opts)

Delete fleet squad

Delete a fleet squad, only empty squads can be deleted  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

squad_id = 789 # Integer | The squad to delete

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fleet squad
  api_instance.delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->delete_fleets_fleet_id_squads_squad_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **squad_id** | **Integer**| The squad to delete | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_fleets_fleet_id_wings_wing_id**
> delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, opts)

Delete fleet wing

Delete a fleet wing, only empty wings can be deleted. The wing may contain squads, but the squads must be empty  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

wing_id = 789 # Integer | The wing to delete

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fleet wing
  api_instance.delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->delete_fleets_fleet_id_wings_wing_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **wing_id** | **Integer**| The wing to delete | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_fleet**
> GetCharactersCharacterIdFleetOk get_characters_character_id_fleet(character_id, opts)

Get character fleet info

Return the fleet ID the character is in, if any.  ---  This route is cached for up to 60 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character fleet info
  result = api_instance.get_characters_character_id_fleet(character_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->get_characters_character_id_fleet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdFleetOk**](GetCharactersCharacterIdFleetOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_fleets_fleet_id**
> GetFleetsFleetIdOk get_fleets_fleet_id(fleet_id, opts)

Get fleet information

Return details about a fleet  ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet information
  result = api_instance.get_fleets_fleet_id(fleet_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->get_fleets_fleet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetFleetsFleetIdOk**](GetFleetsFleetIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_fleets_fleet_id_members**
> Array&lt;GetFleetsFleetIdMembers200Ok&gt; get_fleets_fleet_id_members(fleet_id, opts)

Get fleet members

Return information about fleet members  ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet members
  result = api_instance.get_fleets_fleet_id_members(fleet_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->get_fleets_fleet_id_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetFleetsFleetIdMembers200Ok&gt;**](GetFleetsFleetIdMembers200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_fleets_fleet_id_wings**
> Array&lt;GetFleetsFleetIdWings200Ok&gt; get_fleets_fleet_id_wings(fleet_id, opts)

Get fleet wings

Return information about wings in a fleet  ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet wings
  result = api_instance.get_fleets_fleet_id_wings(fleet_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->get_fleets_fleet_id_wings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetFleetsFleetIdWings200Ok&gt;**](GetFleetsFleetIdWings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_fleets_fleet_id_members**
> post_fleets_fleet_id_members(fleet_id, invitation, opts)

Create fleet invitation

Invite a character into the fleet. If a character has a CSPA charge set it is not possible to invite them to the fleet using ESI  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

invitation = EveESIClient::PostFleetsFleetIdMembersInvitation.new # PostFleetsFleetIdMembersInvitation | Details of the invitation

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet invitation
  api_instance.post_fleets_fleet_id_members(fleet_id, invitation, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->post_fleets_fleet_id_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **invitation** | [**PostFleetsFleetIdMembersInvitation**](PostFleetsFleetIdMembersInvitation.md)| Details of the invitation | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_fleets_fleet_id_wings**
> PostFleetsFleetIdWingsCreated post_fleets_fleet_id_wings(fleet_id, opts)

Create fleet wing

Create a new wing in a fleet  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet wing
  result = api_instance.post_fleets_fleet_id_wings(fleet_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->post_fleets_fleet_id_wings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostFleetsFleetIdWingsCreated**](PostFleetsFleetIdWingsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_fleets_fleet_id_wings_wing_id_squads**
> PostFleetsFleetIdWingsWingIdSquadsCreated post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, opts)

Create fleet squad

Create a new squad in a fleet  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

wing_id = 789 # Integer | The wing_id to create squad in

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet squad
  result = api_instance.post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->post_fleets_fleet_id_wings_wing_id_squads: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **wing_id** | **Integer**| The wing_id to create squad in | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostFleetsFleetIdWingsWingIdSquadsCreated**](PostFleetsFleetIdWingsWingIdSquadsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_fleets_fleet_id**
> put_fleets_fleet_id(fleet_id, new_settings, opts)

Update fleet

Update settings about a fleet  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

new_settings = EveESIClient::PutFleetsFleetIdNewSettings.new # PutFleetsFleetIdNewSettings | What to update for this fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Update fleet
  api_instance.put_fleets_fleet_id(fleet_id, new_settings, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **new_settings** | [**PutFleetsFleetIdNewSettings**](PutFleetsFleetIdNewSettings.md)| What to update for this fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_fleets_fleet_id_members_member_id**
> put_fleets_fleet_id_members_member_id(fleet_id, member_id, movement, opts)

Move fleet member

Move a fleet member around  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

member_id = 56 # Integer | The character ID of a member in this fleet

movement = EveESIClient::PutFleetsFleetIdMembersMemberIdMovement.new # PutFleetsFleetIdMembersMemberIdMovement | Details of the invitation

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Move fleet member
  api_instance.put_fleets_fleet_id_members_member_id(fleet_id, member_id, movement, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id_members_member_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **member_id** | **Integer**| The character ID of a member in this fleet | 
 **movement** | [**PutFleetsFleetIdMembersMemberIdMovement**](PutFleetsFleetIdMembersMemberIdMovement.md)| Details of the invitation | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_fleets_fleet_id_squads_squad_id**
> put_fleets_fleet_id_squads_squad_id(fleet_id, naming, squad_id, opts)

Rename fleet squad

Rename a fleet squad  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

naming = EveESIClient::PutFleetsFleetIdSquadsSquadIdNaming.new # PutFleetsFleetIdSquadsSquadIdNaming | New name of the squad

squad_id = 789 # Integer | The squad to rename

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Rename fleet squad
  api_instance.put_fleets_fleet_id_squads_squad_id(fleet_id, naming, squad_id, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id_squads_squad_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **naming** | [**PutFleetsFleetIdSquadsSquadIdNaming**](PutFleetsFleetIdSquadsSquadIdNaming.md)| New name of the squad | 
 **squad_id** | **Integer**| The squad to rename | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_fleets_fleet_id_wings_wing_id**
> put_fleets_fleet_id_wings_wing_id(fleet_id, naming, wing_id, opts)

Rename fleet wing

Rename a fleet wing  --- 

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

naming = EveESIClient::PutFleetsFleetIdWingsWingIdNaming.new # PutFleetsFleetIdWingsWingIdNaming | New name of the wing

wing_id = 789 # Integer | The wing to rename

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Rename fleet wing
  api_instance.put_fleets_fleet_id_wings_wing_id(fleet_id, naming, wing_id, opts)
rescue EveESIClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id_wings_wing_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **naming** | [**PutFleetsFleetIdWingsWingIdNaming**](PutFleetsFleetIdWingsWingIdNaming.md)| New name of the wing | 
 **wing_id** | **Integer**| The wing to rename | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



