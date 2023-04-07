=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ReportsApiModel::CreateReportScheduleSpecification
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateReportScheduleSpecification' do
  before do
    # run before each test
    @instance = AmznSpApi::ReportsApiModel::CreateReportScheduleSpecification.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateReportScheduleSpecification' do
    it 'should create an instance of CreateReportScheduleSpecification' do
      expect(@instance).to be_instance_of(AmznSpApi::ReportsApiModel::CreateReportScheduleSpecification)
    end
  end
  describe 'test attribute "report_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "marketplace_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "report_options"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "period"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PT5M", "PT15M", "PT30M", "PT1H", "PT2H", "PT4H", "PT8H", "PT12H", "P1D", "P2D", "P3D", "PT84H", "P7D", "P14D", "P15D", "P18D", "P30D", "P1M"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.period = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "next_report_creation_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
