# #Selling Partner API for Fulfillment Inbound
#
# The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'date'

module AmznSpApi::FulfillmentInboundApiModel
  class Address
    # Name of the individual or business.
    attr_accessor :name

    # The street address information.
    attr_accessor :address_line1

    # Additional street address information, if required.
    attr_accessor :address_line2

    # The district or county.
    attr_accessor :district_or_county

    # The city.
    attr_accessor :city

    # The state or province code.  If state or province codes are used in your marketplace, it is recommended that you include one with your request. This helps Amazon to select the most appropriate Amazon fulfillment center for your inbound shipment plan.
    attr_accessor :state_or_province_code

    # The country code in two-character ISO 3166-1 alpha-2 format.
    attr_accessor :country_code

    # The postal code.  If postal codes are used in your marketplace, we recommended that you include one with your request. This helps Amazon select the most appropriate Amazon fulfillment center for the inbound shipment plan.
    attr_accessor :postal_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'name': :Name,
        'address_line1': :AddressLine1,
        'address_line2': :AddressLine2,
        'district_or_county': :DistrictOrCounty,
        'city': :City,
        'state_or_province_code': :StateOrProvinceCode,
        'country_code': :CountryCode,
        'postal_code': :PostalCode
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'name': :Object,
        'address_line1': :Object,
        'address_line2': :Object,
        'district_or_county': :Object,
        'city': :Object,
        'state_or_province_code': :Object,
        'country_code': :Object,
        'postal_code': :Object
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      raise ArgumentError, 'The input argument (attributes) must be a hash in `AmznSpApi::FulfillmentInboundApiModel::Address` initialize method' unless attributes.is_a?(Hash)

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        raise ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::FulfillmentInboundApiModel::Address`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect unless self.class.attribute_map.key?(k.to_sym)

        h[k.to_sym] = v
      end

      self.name = attributes[:name] if attributes.key?(:name)

      self.address_line1 = attributes[:address_line1] if attributes.key?(:address_line1)

      self.address_line2 = attributes[:address_line2] if attributes.key?(:address_line2)

      self.district_or_county = attributes[:district_or_county] if attributes.key?(:district_or_county)

      self.city = attributes[:city] if attributes.key?(:city)

      self.state_or_province_code = attributes[:state_or_province_code] if attributes.key?(:state_or_province_code)

      self.country_code = attributes[:country_code] if attributes.key?(:country_code)

      return unless attributes.key?(:postal_code)

      self.postal_code = attributes[:postal_code]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "name", name cannot be nil.') if @name.nil?

      invalid_properties.push('invalid value for "address_line1", address_line1 cannot be nil.') if @address_line1.nil?

      invalid_properties.push('invalid value for "city", city cannot be nil.') if @city.nil?

      invalid_properties.push('invalid value for "state_or_province_code", state_or_province_code cannot be nil.') if @state_or_province_code.nil?

      invalid_properties.push('invalid value for "country_code", country_code cannot be nil.') if @country_code.nil?

      invalid_properties.push('invalid value for "postal_code", postal_code cannot be nil.') if @postal_code.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @address_line1.nil?
      return false if @city.nil?
      return false if @state_or_province_code.nil?
      return false if @country_code.nil?
      return false if @postal_code.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        name == other.name &&
        address_line1 == other.address_line1 &&
        address_line2 == other.address_line2 &&
        district_or_county == other.district_or_county &&
        city == other.city &&
        state_or_province_code == other.state_or_province_code &&
        country_code == other.country_code &&
        postal_code == other.postal_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, address_line1, address_line2, district_or_county, city, state_or_province_code, country_code, postal_code].hash
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
        AmznSpApi::FulfillmentInboundApiModel.const_get(type).build_from_hash(value)
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
