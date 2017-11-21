# EveESIClient::WalletApi

All URIs are relative to *https://esi.tech.ccp.is*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_wallet**](WalletApi.md#get_characters_character_id_wallet) | **GET** /v1/characters/{character_id}/wallet/ | Get a character&#39;s wallet balance
[**get_characters_character_id_wallet_journal**](WalletApi.md#get_characters_character_id_wallet_journal) | **GET** /v2/characters/{character_id}/wallet/journal/ | Get character wallet journal
[**get_characters_character_id_wallet_transactions**](WalletApi.md#get_characters_character_id_wallet_transactions) | **GET** /v1/characters/{character_id}/wallet/transactions/ | Get wallet transactions
[**get_corporations_corporation_id_wallets**](WalletApi.md#get_corporations_corporation_id_wallets) | **GET** /v1/corporations/{corporation_id}/wallets/ | Returns a corporation&#39;s wallet balance
[**get_corporations_corporation_id_wallets_division_journal**](WalletApi.md#get_corporations_corporation_id_wallets_division_journal) | **GET** /v1/corporations/{corporation_id}/wallets/{division}/journal/ | Get corporation wallet journal
[**get_corporations_corporation_id_wallets_division_transactions**](WalletApi.md#get_corporations_corporation_id_wallets_division_transactions) | **GET** /v1/corporations/{corporation_id}/wallets/{division}/transactions/ | Get corporation wallet transactions


# **get_characters_character_id_wallet**
> Float get_characters_character_id_wallet(character_id, opts)

Get a character's wallet balance

Returns a character's wallet balance  ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get a character's wallet balance
  result = api_instance.get_characters_character_id_wallet(character_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallet: #{e}"
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

**Float**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_wallet_journal**
> Array&lt;GetCharactersCharacterIdWalletJournal200Ok&gt; get_characters_character_id_wallet_journal(character_id, opts)

Get character wallet journal

Retrieve character wallet journal  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_id: 789, # Integer | Only show journal entries happened before the transaction referenced by this id
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character wallet journal
  result = api_instance.get_characters_character_id_wallet_journal(character_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallet_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_id** | **Integer**| Only show journal entries happened before the transaction referenced by this id | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdWalletJournal200Ok&gt;**](GetCharactersCharacterIdWalletJournal200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_wallet_transactions**
> Array&lt;GetCharactersCharacterIdWalletTransactions200Ok&gt; get_characters_character_id_wallet_transactions(character_id, opts)

Get wallet transactions

Get wallet transactions of a character  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_id: 789, # Integer | Only show transactions happened before the one referenced by this id
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get wallet transactions
  result = api_instance.get_characters_character_id_wallet_transactions(character_id, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallet_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_id** | **Integer**| Only show transactions happened before the one referenced by this id | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdWalletTransactions200Ok&gt;**](GetCharactersCharacterIdWalletTransactions200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_wallets**
> Array&lt;GetCorporationsCorporationIdWallets200Ok&gt; get_corporations_corporation_id_wallets(corporation_id, , opts)

Returns a corporation's wallet balance

Get a corporation's wallets  ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::WalletApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Returns a corporation's wallet balance
  result = api_instance.get_corporations_corporation_id_wallets(corporation_id, , opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling WalletApi->get_corporations_corporation_id_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdWallets200Ok&gt;**](GetCorporationsCorporationIdWallets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_wallets_division_journal**
> Array&lt;GetCorporationsCorporationIdWalletsDivisionJournal200Ok&gt; get_corporations_corporation_id_wallets_division_journal(corporation_id, division, opts)

Get corporation wallet journal

Retrieve corporation wallet journal  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::WalletApi.new

corporation_id = 56 # Integer | An EVE corporation ID

division = 56 # Integer | Wallet key of the division to fetch journals from

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_id: 789, # Integer | Only show journal entries happened before the transaction referenced by this id
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation wallet journal
  result = api_instance.get_corporations_corporation_id_wallets_division_journal(corporation_id, division, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling WalletApi->get_corporations_corporation_id_wallets_division_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **division** | **Integer**| Wallet key of the division to fetch journals from | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_id** | **Integer**| Only show journal entries happened before the transaction referenced by this id | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdWalletsDivisionJournal200Ok&gt;**](GetCorporationsCorporationIdWalletsDivisionJournal200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_wallets_division_transactions**
> Array&lt;GetCorporationsCorporationIdWalletsDivisionTransactions200Ok&gt; get_corporations_corporation_id_wallets_division_transactions(corporation_id, division, opts)

Get corporation wallet transactions

Get wallet transactions of a corporation  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'eve_esi_client'
# setup authorization
EveESIClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EveESIClient::WalletApi.new

corporation_id = 56 # Integer | An EVE corporation ID

division = 56 # Integer | Wallet key of the division to fetch journals from

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_id: 789, # Integer | Only show journal entries happened before the transaction referenced by this id
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation wallet transactions
  result = api_instance.get_corporations_corporation_id_wallets_division_transactions(corporation_id, division, opts)
  p result
rescue EveESIClient::ApiError => e
  puts "Exception when calling WalletApi->get_corporations_corporation_id_wallets_division_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **division** | **Integer**| Wallet key of the division to fetch journals from | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_id** | **Integer**| Only show journal entries happened before the transaction referenced by this id | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdWalletsDivisionTransactions200Ok&gt;**](GetCorporationsCorporationIdWalletsDivisionTransactions200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



