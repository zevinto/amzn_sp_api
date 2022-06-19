=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module AmznSpApi::FinancesApiModel
  # An item of a shipment, refund, guarantee claim, or chargeback.
  class ShipmentItem
    # The seller SKU of the item. The seller SKU is qualified by the seller's seller ID, which is included with every call to the Selling Partner API.
    attr_accessor :seller_sku

    # An Amazon-defined order item identifier.
    attr_accessor :order_item_id

    # An Amazon-defined order adjustment identifier defined for refunds, guarantee claims, and chargeback events.
    attr_accessor :order_adjustment_item_id

    # The number of items shipped.
    attr_accessor :quantity_shipped

    attr_accessor :item_charge_list

    attr_accessor :item_charge_adjustment_list

    attr_accessor :item_fee_list

    attr_accessor :item_fee_adjustment_list

    attr_accessor :item_tax_withheld_list

    attr_accessor :promotion_list

    attr_accessor :promotion_adjustment_list

    attr_accessor :cost_of_points_granted

    attr_accessor :cost_of_points_returned

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'seller_sku' => :'SellerSKU',
        :'order_item_id' => :'OrderItemId',
        :'order_adjustment_item_id' => :'OrderAdjustmentItemId',
        :'quantity_shipped' => :'QuantityShipped',
        :'item_charge_list' => :'ItemChargeList',
        :'item_charge_adjustment_list' => :'ItemChargeAdjustmentList',
        :'item_fee_list' => :'ItemFeeList',
        :'item_fee_adjustment_list' => :'ItemFeeAdjustmentList',
        :'item_tax_withheld_list' => :'ItemTaxWithheldList',
        :'promotion_list' => :'PromotionList',
        :'promotion_adjustment_list' => :'PromotionAdjustmentList',
        :'cost_of_points_granted' => :'CostOfPointsGranted',
        :'cost_of_points_returned' => :'CostOfPointsReturned'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'seller_sku' => :'Object',
        :'order_item_id' => :'Object',
        :'order_adjustment_item_id' => :'Object',
        :'quantity_shipped' => :'Object',
        :'item_charge_list' => :'Object',
        :'item_charge_adjustment_list' => :'Object',
        :'item_fee_list' => :'Object',
        :'item_fee_adjustment_list' => :'Object',
        :'item_tax_withheld_list' => :'Object',
        :'promotion_list' => :'Object',
        :'promotion_adjustment_list' => :'Object',
        :'cost_of_points_granted' => :'Object',
        :'cost_of_points_returned' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmznSpApi::FinancesApiModel::ShipmentItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::FinancesApiModel::ShipmentItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'seller_sku')
        self.seller_sku = attributes[:'seller_sku']
      end

      if attributes.key?(:'order_item_id')
        self.order_item_id = attributes[:'order_item_id']
      end

      if attributes.key?(:'order_adjustment_item_id')
        self.order_adjustment_item_id = attributes[:'order_adjustment_item_id']
      end

      if attributes.key?(:'quantity_shipped')
        self.quantity_shipped = attributes[:'quantity_shipped']
      end

      if attributes.key?(:'item_charge_list')
        self.item_charge_list = attributes[:'item_charge_list']
      end

      if attributes.key?(:'item_charge_adjustment_list')
        self.item_charge_adjustment_list = attributes[:'item_charge_adjustment_list']
      end

      if attributes.key?(:'item_fee_list')
        self.item_fee_list = attributes[:'item_fee_list']
      end

      if attributes.key?(:'item_fee_adjustment_list')
        self.item_fee_adjustment_list = attributes[:'item_fee_adjustment_list']
      end

      if attributes.key?(:'item_tax_withheld_list')
        self.item_tax_withheld_list = attributes[:'item_tax_withheld_list']
      end

      if attributes.key?(:'promotion_list')
        self.promotion_list = attributes[:'promotion_list']
      end

      if attributes.key?(:'promotion_adjustment_list')
        self.promotion_adjustment_list = attributes[:'promotion_adjustment_list']
      end

      if attributes.key?(:'cost_of_points_granted')
        self.cost_of_points_granted = attributes[:'cost_of_points_granted']
      end

      if attributes.key?(:'cost_of_points_returned')
        self.cost_of_points_returned = attributes[:'cost_of_points_returned']
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
          seller_sku == o.seller_sku &&
          order_item_id == o.order_item_id &&
          order_adjustment_item_id == o.order_adjustment_item_id &&
          quantity_shipped == o.quantity_shipped &&
          item_charge_list == o.item_charge_list &&
          item_charge_adjustment_list == o.item_charge_adjustment_list &&
          item_fee_list == o.item_fee_list &&
          item_fee_adjustment_list == o.item_fee_adjustment_list &&
          item_tax_withheld_list == o.item_tax_withheld_list &&
          promotion_list == o.promotion_list &&
          promotion_adjustment_list == o.promotion_adjustment_list &&
          cost_of_points_granted == o.cost_of_points_granted &&
          cost_of_points_returned == o.cost_of_points_returned
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [seller_sku, order_item_id, order_adjustment_item_id, quantity_shipped, item_charge_list, item_charge_adjustment_list, item_fee_list, item_fee_adjustment_list, item_tax_withheld_list, promotion_list, promotion_adjustment_list, cost_of_points_granted, cost_of_points_returned].hash
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
