=begin
#Selling Partner API for Shipment Invoicing

#The Selling Partner API for Shipment Invoicing helps you programmatically retrieve shipment invoice information in the Brazil marketplace for a selling partner’s Fulfillment by Amazon (FBA) orders.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module AmznSpApi::ShipmentInvoicingApiModel
  # The shipment item information required by a seller to issue a shipment invoice.
  class ShipmentItem
    # The Amazon Standard Identification Number (ASIN) of the item.
    attr_accessor :asin

    # The seller SKU of the item.
    attr_accessor :seller_sku

    # The Amazon-defined identifier for the order item.
    attr_accessor :order_item_id

    # The name of the item.
    attr_accessor :title

    # The number of items ordered.
    attr_accessor :quantity_ordered

    attr_accessor :item_price

    attr_accessor :shipping_price

    attr_accessor :gift_wrap_price

    attr_accessor :shipping_discount

    attr_accessor :promotion_discount

    attr_accessor :serial_numbers

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'asin' => :'ASIN',
        :'seller_sku' => :'SellerSKU',
        :'order_item_id' => :'OrderItemId',
        :'title' => :'Title',
        :'quantity_ordered' => :'QuantityOrdered',
        :'item_price' => :'ItemPrice',
        :'shipping_price' => :'ShippingPrice',
        :'gift_wrap_price' => :'GiftWrapPrice',
        :'shipping_discount' => :'ShippingDiscount',
        :'promotion_discount' => :'PromotionDiscount',
        :'serial_numbers' => :'SerialNumbers'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'asin' => :'Object',
        :'seller_sku' => :'Object',
        :'order_item_id' => :'Object',
        :'title' => :'Object',
        :'quantity_ordered' => :'Object',
        :'item_price' => :'Object',
        :'shipping_price' => :'Object',
        :'gift_wrap_price' => :'Object',
        :'shipping_discount' => :'Object',
        :'promotion_discount' => :'Object',
        :'serial_numbers' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmznSpApi::ShipmentInvoicingApiModel::ShipmentItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::ShipmentInvoicingApiModel::ShipmentItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'asin')
        self.asin = attributes[:'asin']
      end

      if attributes.key?(:'seller_sku')
        self.seller_sku = attributes[:'seller_sku']
      end

      if attributes.key?(:'order_item_id')
        self.order_item_id = attributes[:'order_item_id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'quantity_ordered')
        self.quantity_ordered = attributes[:'quantity_ordered']
      end

      if attributes.key?(:'item_price')
        self.item_price = attributes[:'item_price']
      end

      if attributes.key?(:'shipping_price')
        self.shipping_price = attributes[:'shipping_price']
      end

      if attributes.key?(:'gift_wrap_price')
        self.gift_wrap_price = attributes[:'gift_wrap_price']
      end

      if attributes.key?(:'shipping_discount')
        self.shipping_discount = attributes[:'shipping_discount']
      end

      if attributes.key?(:'promotion_discount')
        self.promotion_discount = attributes[:'promotion_discount']
      end

      if attributes.key?(:'serial_numbers')
        self.serial_numbers = attributes[:'serial_numbers']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          asin == o.asin &&
          seller_sku == o.seller_sku &&
          order_item_id == o.order_item_id &&
          title == o.title &&
          quantity_ordered == o.quantity_ordered &&
          item_price == o.item_price &&
          shipping_price == o.shipping_price &&
          gift_wrap_price == o.gift_wrap_price &&
          shipping_discount == o.shipping_discount &&
          promotion_discount == o.promotion_discount &&
          serial_numbers == o.serial_numbers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [asin, seller_sku, order_item_id, title, quantity_ordered, item_price, shipping_price, gift_wrap_price, shipping_discount, promotion_discount, serial_numbers].hash
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
        AmznSpApi::ShipmentInvoicingApiModel.const_get(type).build_from_hash(value)
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
