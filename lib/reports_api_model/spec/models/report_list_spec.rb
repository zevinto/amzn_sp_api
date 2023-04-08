# #Selling Partner API for Reports
#
# The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.
#
# OpenAPI spec version: 2021-06-30
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ReportsApiModel::ReportList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportList' do
  before do
    # run before each test
    @instance = AmznSpApi::ReportsApiModel::ReportList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportList' do
    it 'should create an instance of ReportList' do
      expect(@instance).to be_instance_of(AmznSpApi::ReportsApiModel::ReportList)
    end
  end
end
