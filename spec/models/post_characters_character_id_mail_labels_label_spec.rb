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

# Unit tests for EveESIClient::PostCharactersCharacterIdMailLabelsLabel
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostCharactersCharacterIdMailLabelsLabel' do
  before do
    # run before each test
    @instance = EveESIClient::PostCharactersCharacterIdMailLabelsLabel.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostCharactersCharacterIdMailLabelsLabel' do
    it 'should create an instance of PostCharactersCharacterIdMailLabelsLabel' do
      expect(@instance).to be_instance_of(EveESIClient::PostCharactersCharacterIdMailLabelsLabel)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "color"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["#0000fe", "#006634", "#0099ff", "#00ff33", "#01ffff", "#349800", "#660066", "#666666", "#999999", "#99ffff", "#9a0000", "#ccff9a", "#e6e6e6", "#fe0000", "#ff6600", "#ffff01", "#ffffcd", "#ffffff"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.color = value }.not_to raise_error
       #end
    end
  end

end

