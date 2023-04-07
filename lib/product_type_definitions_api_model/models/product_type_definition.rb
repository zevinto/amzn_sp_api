=begin
#Selling Partner API for Product Type Definitions

#The Selling Partner API for Product Type Definitions provides programmatic access to attribute and data requirements for product types in the Amazon catalog. Use this API to return the JSON Schema for a product type that you can then use with other Selling Partner APIs, such as the Selling Partner API for Listings Items, the Selling Partner API for Catalog Items, and the Selling Partner API for Feeds (for JSON-based listing feeds).  For more information, see the [Product Type Definitions API Use Case Guide](doc:product-type-api-use-case-guide).

OpenAPI spec version: 2020-09-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module AmznSpApi::ProductTypeDefinitionsApiModel
  # A product type definition represents the attributes and data requirements for a product type in the Amazon catalog. Product type definitions are used interchangeably between the Selling Partner API for Listings Items, Selling Partner API for Catalog Items, and JSON-based listings feeds in the Selling Partner API for Feeds.
  class ProductTypeDefinition
    attr_accessor :meta_schema

    attr_accessor :schema

    # Name of the requirements set represented in this product type definition.
    attr_accessor :requirements

    # Identifies if the required attributes for a requirements set are enforced by the product type definition schema. Non-enforced requirements enable structural validation of individual attributes without all of the required attributes being present (such as for partial updates).
    attr_accessor :requirements_enforced

    # Mapping of property group names to property groups. Property groups represent logical groupings of schema properties that can be used for display or informational purposes.
    attr_accessor :property_groups

    # Locale of the display elements contained in the product type definition.
    attr_accessor :locale

    # Amazon marketplace identifiers for which the product type definition is applicable.
    attr_accessor :marketplace_ids

    # The name of the Amazon product type that this product type definition applies to.
    attr_accessor :product_type

    attr_accessor :product_type_version

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'meta_schema' => :'metaSchema',
        :'schema' => :'schema',
        :'requirements' => :'requirements',
        :'requirements_enforced' => :'requirementsEnforced',
        :'property_groups' => :'propertyGroups',
        :'locale' => :'locale',
        :'marketplace_ids' => :'marketplaceIds',
        :'product_type' => :'productType',
        :'product_type_version' => :'productTypeVersion'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'meta_schema' => :'Object',
        :'schema' => :'Object',
        :'requirements' => :'Object',
        :'requirements_enforced' => :'Object',
        :'property_groups' => :'Object',
        :'locale' => :'Object',
        :'marketplace_ids' => :'Object',
        :'product_type' => :'Object',
        :'product_type_version' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmznSpApi::ProductTypeDefinitionsApiModel::ProductTypeDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::ProductTypeDefinitionsApiModel::ProductTypeDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'meta_schema')
        self.meta_schema = attributes[:'meta_schema']
      end

      if attributes.key?(:'schema')
        self.schema = attributes[:'schema']
      end

      if attributes.key?(:'requirements')
        self.requirements = attributes[:'requirements']
      end

      if attributes.key?(:'requirements_enforced')
        self.requirements_enforced = attributes[:'requirements_enforced']
      end

      if attributes.key?(:'property_groups')
        if (value = attributes[:'property_groups']).is_a?(Hash)
          self.property_groups = value
        end
      end

      if attributes.key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.key?(:'marketplace_ids')
        if (value = attributes[:'marketplace_ids']).is_a?(Array)
          self.marketplace_ids = value
        end
      end

      if attributes.key?(:'product_type')
        self.product_type = attributes[:'product_type']
      end

      if attributes.key?(:'product_type_version')
        self.product_type_version = attributes[:'product_type_version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @schema.nil?
        invalid_properties.push('invalid value for "schema", schema cannot be nil.')
      end

      if @requirements.nil?
        invalid_properties.push('invalid value for "requirements", requirements cannot be nil.')
      end

      if @requirements_enforced.nil?
        invalid_properties.push('invalid value for "requirements_enforced", requirements_enforced cannot be nil.')
      end

      if @property_groups.nil?
        invalid_properties.push('invalid value for "property_groups", property_groups cannot be nil.')
      end

      if @locale.nil?
        invalid_properties.push('invalid value for "locale", locale cannot be nil.')
      end

      if @marketplace_ids.nil?
        invalid_properties.push('invalid value for "marketplace_ids", marketplace_ids cannot be nil.')
      end

      if @product_type.nil?
        invalid_properties.push('invalid value for "product_type", product_type cannot be nil.')
      end

      if @product_type_version.nil?
        invalid_properties.push('invalid value for "product_type_version", product_type_version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @schema.nil?
      return false if @requirements.nil?
      requirements_validator = EnumAttributeValidator.new('Object', ['LISTING', 'LISTING_PRODUCT_ONLY', 'LISTING_OFFER_ONLY'])
      return false unless requirements_validator.valid?(@requirements)
      return false if @requirements_enforced.nil?
      requirements_enforced_validator = EnumAttributeValidator.new('Object', ['ENFORCED', 'NOT_ENFORCED'])
      return false unless requirements_enforced_validator.valid?(@requirements_enforced)
      return false if @property_groups.nil?
      return false if @locale.nil?
      return false if @marketplace_ids.nil?
      return false if @product_type.nil?
      return false if @product_type_version.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requirements Object to be assigned
    def requirements=(requirements)
      validator = EnumAttributeValidator.new('Object', ['LISTING', 'LISTING_PRODUCT_ONLY', 'LISTING_OFFER_ONLY'])
      unless validator.valid?(requirements)
        fail ArgumentError, "invalid value for \"requirements\", must be one of #{validator.allowable_values}."
      end
      @requirements = requirements
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requirements_enforced Object to be assigned
    def requirements_enforced=(requirements_enforced)
      validator = EnumAttributeValidator.new('Object', ['ENFORCED', 'NOT_ENFORCED'])
      unless validator.valid?(requirements_enforced)
        fail ArgumentError, "invalid value for \"requirements_enforced\", must be one of #{validator.allowable_values}."
      end
      @requirements_enforced = requirements_enforced
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          meta_schema == o.meta_schema &&
          schema == o.schema &&
          requirements == o.requirements &&
          requirements_enforced == o.requirements_enforced &&
          property_groups == o.property_groups &&
          locale == o.locale &&
          marketplace_ids == o.marketplace_ids &&
          product_type == o.product_type &&
          product_type_version == o.product_type_version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [meta_schema, schema, requirements, requirements_enforced, property_groups, locale, marketplace_ids, product_type, product_type_version].hash
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
        AmznSpApi::ProductTypeDefinitionsApiModel.const_get(type).build_from_hash(value)
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
