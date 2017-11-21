=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EveESIClient::GetCorporationsCorporationIdRolesHistory200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCorporationsCorporationIdRolesHistory200Ok' do
  before do
    # run before each test
    @instance = EveESIClient::GetCorporationsCorporationIdRolesHistory200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCorporationsCorporationIdRolesHistory200Ok' do
    it 'should create an instance of GetCorporationsCorporationIdRolesHistory200Ok' do
      expect(@instance).to be_instance_of(EveESIClient::GetCorporationsCorporationIdRolesHistory200Ok)
    end
  end
  describe 'test attribute "character_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "changed_at"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "issuer_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["grantable_roles", "grantable_roles_at_base", "grantable_roles_at_hq", "grantable_roles_at_other", "roles", "roles_at_base", "roles_at_hq", "roles_at_other"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.role_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "old_roles"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["Account_Take_1", "Account_Take_2", "Account_Take_3", "Account_Take_4", "Account_Take_5", "Account_Take_6", "Account_Take_7", "Accountant", "Auditor", "Communications_Officer", "Config_Equipment", "Config_Starbase_Equipment", "Container_Take_1", "Container_Take_2", "Container_Take_3", "Container_Take_4", "Container_Take_5", "Container_Take_6", "Container_Take_7", "Contract_Manager", "Diplomat", "Director", "Factory_Manager", "Fitting_Manager", "Hangar_Query_1", "Hangar_Query_2", "Hangar_Query_3", "Hangar_Query_4", "Hangar_Query_5", "Hangar_Query_6", "Hangar_Query_7", "Hangar_Take_1", "Hangar_Take_2", "Hangar_Take_3", "Hangar_Take_4", "Hangar_Take_5", "Hangar_Take_6", "Hangar_Take_7", "Junior_Accountant", "Personnel_Manager", "Rent_Factory_Facility", "Rent_Office", "Rent_Research_Facility", "Security_Officer", "Starbase_Defense_Operator", "Starbase_Fuel_Technician", "Station_Manager", "Terrestrial_Combat_Officer", "Terrestrial_Logistics_Officer", "Trader"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.old_roles = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "new_roles"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["Account_Take_1", "Account_Take_2", "Account_Take_3", "Account_Take_4", "Account_Take_5", "Account_Take_6", "Account_Take_7", "Accountant", "Auditor", "Communications_Officer", "Config_Equipment", "Config_Starbase_Equipment", "Container_Take_1", "Container_Take_2", "Container_Take_3", "Container_Take_4", "Container_Take_5", "Container_Take_6", "Container_Take_7", "Contract_Manager", "Diplomat", "Director", "Factory_Manager", "Fitting_Manager", "Hangar_Query_1", "Hangar_Query_2", "Hangar_Query_3", "Hangar_Query_4", "Hangar_Query_5", "Hangar_Query_6", "Hangar_Query_7", "Hangar_Take_1", "Hangar_Take_2", "Hangar_Take_3", "Hangar_Take_4", "Hangar_Take_5", "Hangar_Take_6", "Hangar_Take_7", "Junior_Accountant", "Personnel_Manager", "Rent_Factory_Facility", "Rent_Office", "Rent_Research_Facility", "Security_Officer", "Starbase_Defense_Operator", "Starbase_Fuel_Technician", "Station_Manager", "Terrestrial_Combat_Officer", "Terrestrial_Logistics_Officer", "Trader"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.new_roles = value }.not_to raise_error
       #end
    end
  end

end

