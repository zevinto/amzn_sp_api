=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module AmznSpApi::MerchantFulfillmentApiModel
  # Shipment information required for requesting shipping service offers or for creating a shipment.
  class ShipmentRequestDetails
    attr_accessor :amazon_order_id

    attr_accessor :seller_order_id

    attr_accessor :item_list

    attr_accessor :ship_from_address

    attr_accessor :package_dimensions

    attr_accessor :weight

    attr_accessor :must_arrive_by_date

    attr_accessor :ship_date

    attr_accessor :shipping_service_options

    attr_accessor :label_customization

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amazon_order_id' => :'AmazonOrderId',
        :'seller_order_id' => :'SellerOrderId',
        :'item_list' => :'ItemList',
        :'ship_from_address' => :'ShipFromAddress',
        :'package_dimensions' => :'PackageDimensions',
        :'weight' => :'Weight',
        :'must_arrive_by_date' => :'MustArriveByDate',
        :'ship_date' => :'ShipDate',
        :'shipping_service_options' => :'ShippingServiceOptions',
        :'label_customization' => :'LabelCustomization'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amazon_order_id' => :'Object',
        :'seller_order_id' => :'Object',
        :'item_list' => :'Object',
        :'ship_from_address' => :'Object',
        :'package_dimensions' => :'Object',
        :'weight' => :'Object',
        :'must_arrive_by_date' => :'Object',
        :'ship_date' => :'Object',
        :'shipping_service_options' => :'Object',
        :'label_customization' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmznSpApi::MerchantFulfillmentApiModel::ShipmentRequestDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::MerchantFulfillmentApiModel::ShipmentRequestDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amazon_order_id')
        self.amazon_order_id = attributes[:'amazon_order_id']
      end

      if attributes.key?(:'seller_order_id')
        self.seller_order_id = attributes[:'seller_order_id']
      end

      if attributes.key?(:'item_list')
        self.item_list = attributes[:'item_list']
      end

      if attributes.key?(:'ship_from_address')
        self.ship_from_address = attributes[:'ship_from_address']
      end

      if attributes.key?(:'package_dimensions')
        self.package_dimensions = attributes[:'package_dimensions']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.key?(:'must_arrive_by_date')
        self.must_arrive_by_date = attributes[:'must_arrive_by_date']
      end

      if attributes.key?(:'ship_date')
        self.ship_date = attributes[:'ship_date']
      end

      if attributes.key?(:'shipping_service_options')
        self.shipping_service_options = attributes[:'shipping_service_options']
      end

      if attributes.key?(:'label_customization')
        self.label_customization = attributes[:'label_customization']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amazon_order_id.nil?
        invalid_properties.push('invalid value for "amazon_order_id", amazon_order_id cannot be nil.')
      end

      if @item_list.nil?
        invalid_properties.push('invalid value for "item_list", item_list cannot be nil.')
      end

      if @ship_from_address.nil?
        invalid_properties.push('invalid value for "ship_from_address", ship_from_address cannot be nil.')
      end

      if @package_dimensions.nil?
        invalid_properties.push('invalid value for "package_dimensions", package_dimensions cannot be nil.')
      end

      if @weight.nil?
        invalid_properties.push('invalid value for "weight", weight cannot be nil.')
      end

      if @shipping_service_options.nil?
        invalid_properties.push('invalid value for "shipping_service_options", shipping_service_options cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amazon_order_id.nil?
      return false if @item_list.nil?
      return false if @ship_from_address.nil?
      return false if @package_dimensions.nil?
      return false if @weight.nil?
      return false if @shipping_service_options.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amazon_order_id == o.amazon_order_id &&
          seller_order_id == o.seller_order_id &&
          item_list == o.item_list &&
          ship_from_address == o.ship_from_address &&
          package_dimensions == o.package_dimensions &&
          weight == o.weight &&
          must_arrive_by_date == o.must_arrive_by_date &&
          ship_date == o.ship_date &&
          shipping_service_options == o.shipping_service_options &&
          label_customization == o.label_customization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amazon_order_id, seller_order_id, item_list, ship_from_address, package_dimensions, weight, must_arrive_by_date, ship_date, shipping_service_options, label_customization].hash
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
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
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
        AmznSpApi::MerchantFulfillmentApiModel.const_get(type).build_from_hash(value)
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
        value = self.send(attr)
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
    end  end
end
