# #Selling Partner API for Finances
#
# The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'date'

module AmznSpApi::FinancesApiModel
  # Information related to a financial event group.
  class FinancialEventGroup
    # A unique identifier for the financial event group.
    attr_accessor :financial_event_group_id

    # The processing status of the financial event group indicates whether the balance of the financial event group is settled.  Possible values:  * Open  * Closed
    attr_accessor :processing_status

    # The status of the fund transfer.
    attr_accessor :fund_transfer_status

    attr_accessor :original_total, :converted_total, :fund_transfer_date, :beginning_balance, :financial_event_group_start, :financial_event_group_end

    # The trace identifier used by sellers to look up transactions externally.
    attr_accessor :trace_id

    # The account tail of the payment instrument.
    attr_accessor :account_tail

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'financial_event_group_id': :FinancialEventGroupId,
        'processing_status': :ProcessingStatus,
        'fund_transfer_status': :FundTransferStatus,
        'original_total': :OriginalTotal,
        'converted_total': :ConvertedTotal,
        'fund_transfer_date': :FundTransferDate,
        'trace_id': :TraceId,
        'account_tail': :AccountTail,
        'beginning_balance': :BeginningBalance,
        'financial_event_group_start': :FinancialEventGroupStart,
        'financial_event_group_end': :FinancialEventGroupEnd
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'financial_event_group_id': :Object,
        'processing_status': :Object,
        'fund_transfer_status': :Object,
        'original_total': :Object,
        'converted_total': :Object,
        'fund_transfer_date': :Object,
        'trace_id': :Object,
        'account_tail': :Object,
        'beginning_balance': :Object,
        'financial_event_group_start': :Object,
        'financial_event_group_end': :Object
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      raise ArgumentError, 'The input argument (attributes) must be a hash in `AmznSpApi::FinancesApiModel::FinancialEventGroup` initialize method' unless attributes.is_a?(Hash)

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        raise ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::FinancesApiModel::FinancialEventGroup`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect unless self.class.attribute_map.key?(k.to_sym)

        h[k.to_sym] = v
      end

      self.financial_event_group_id = attributes[:financial_event_group_id] if attributes.key?(:financial_event_group_id)

      self.processing_status = attributes[:processing_status] if attributes.key?(:processing_status)

      self.fund_transfer_status = attributes[:fund_transfer_status] if attributes.key?(:fund_transfer_status)

      self.original_total = attributes[:original_total] if attributes.key?(:original_total)

      self.converted_total = attributes[:converted_total] if attributes.key?(:converted_total)

      self.fund_transfer_date = attributes[:fund_transfer_date] if attributes.key?(:fund_transfer_date)

      self.trace_id = attributes[:trace_id] if attributes.key?(:trace_id)

      self.account_tail = attributes[:account_tail] if attributes.key?(:account_tail)

      self.beginning_balance = attributes[:beginning_balance] if attributes.key?(:beginning_balance)

      self.financial_event_group_start = attributes[:financial_event_group_start] if attributes.key?(:financial_event_group_start)

      return unless attributes.key?(:financial_event_group_end)

      self.financial_event_group_end = attributes[:financial_event_group_end]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      []
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        financial_event_group_id == other.financial_event_group_id &&
        processing_status == other.processing_status &&
        fund_transfer_status == other.fund_transfer_status &&
        original_total == other.original_total &&
        converted_total == other.converted_total &&
        fund_transfer_date == other.fund_transfer_date &&
        trace_id == other.trace_id &&
        account_tail == other.account_tail &&
        beginning_balance == other.beginning_balance &&
        financial_event_group_start == other.financial_event_group_start &&
        financial_event_group_end == other.financial_event_group_end
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [financial_event_group_id, processing_status, fund_transfer_status, original_total, converted_total, fund_transfer_date, trace_id, account_tail, beginning_balance, financial_event_group_start, financial_event_group_end].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize(::Regexp.last_match(1), v) }) if attributes[self.class.attribute_map[key]].is_a?(Array)
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        AmznSpApi::FinancesApiModel.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end end
end
