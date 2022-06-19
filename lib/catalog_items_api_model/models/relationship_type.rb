=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items helps you programmatically retrieve item details for items in the catalog.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module AmznSpApi::CatalogItemsApiModel
  # Specific variations of the item.
  class RelationshipType
    attr_accessor :identifiers

    # The color variation of the item.
    attr_accessor :color

    # The edition variation of the item.
    attr_accessor :edition

    # The flavor variation of the item.
    attr_accessor :flavor

    # The gem type variations of the item.
    attr_accessor :gem_type

    # The golf club flex variation of an item.
    attr_accessor :golf_club_flex

    # The hand orientation variation of an item.
    attr_accessor :hand_orientation

    # The hardware platform variation of an item.
    attr_accessor :hardware_platform

    # The material type variations of an item.
    attr_accessor :material_type

    # The metal type variation of an item.
    attr_accessor :metal_type

    # The model variation of an item.
    attr_accessor :model

    # The operating system variations of an item.
    attr_accessor :operating_system

    # The product type subcategory variation of an item.
    attr_accessor :product_type_subcategory

    # The ring size variation of an item.
    attr_accessor :ring_size

    # The shaft material variation of an item.
    attr_accessor :shaft_material

    # The scent variation of an item.
    attr_accessor :scent

    # The size variation of an item.
    attr_accessor :size

    # The size per pearl variation of an item.
    attr_accessor :size_per_pearl

    attr_accessor :golf_club_loft

    attr_accessor :total_diamond_weight

    attr_accessor :total_gem_weight

    # The package quantity variation of an item.
    attr_accessor :package_quantity

    attr_accessor :item_dimensions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'identifiers' => :'Identifiers',
        :'color' => :'Color',
        :'edition' => :'Edition',
        :'flavor' => :'Flavor',
        :'gem_type' => :'GemType',
        :'golf_club_flex' => :'GolfClubFlex',
        :'hand_orientation' => :'HandOrientation',
        :'hardware_platform' => :'HardwarePlatform',
        :'material_type' => :'MaterialType',
        :'metal_type' => :'MetalType',
        :'model' => :'Model',
        :'operating_system' => :'OperatingSystem',
        :'product_type_subcategory' => :'ProductTypeSubcategory',
        :'ring_size' => :'RingSize',
        :'shaft_material' => :'ShaftMaterial',
        :'scent' => :'Scent',
        :'size' => :'Size',
        :'size_per_pearl' => :'SizePerPearl',
        :'golf_club_loft' => :'GolfClubLoft',
        :'total_diamond_weight' => :'TotalDiamondWeight',
        :'total_gem_weight' => :'TotalGemWeight',
        :'package_quantity' => :'PackageQuantity',
        :'item_dimensions' => :'ItemDimensions'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'identifiers' => :'Object',
        :'color' => :'Object',
        :'edition' => :'Object',
        :'flavor' => :'Object',
        :'gem_type' => :'Object',
        :'golf_club_flex' => :'Object',
        :'hand_orientation' => :'Object',
        :'hardware_platform' => :'Object',
        :'material_type' => :'Object',
        :'metal_type' => :'Object',
        :'model' => :'Object',
        :'operating_system' => :'Object',
        :'product_type_subcategory' => :'Object',
        :'ring_size' => :'Object',
        :'shaft_material' => :'Object',
        :'scent' => :'Object',
        :'size' => :'Object',
        :'size_per_pearl' => :'Object',
        :'golf_club_loft' => :'Object',
        :'total_diamond_weight' => :'Object',
        :'total_gem_weight' => :'Object',
        :'package_quantity' => :'Object',
        :'item_dimensions' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmznSpApi::CatalogItemsApiModel::RelationshipType` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::CatalogItemsApiModel::RelationshipType`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'identifiers')
        self.identifiers = attributes[:'identifiers']
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'edition')
        self.edition = attributes[:'edition']
      end

      if attributes.key?(:'flavor')
        self.flavor = attributes[:'flavor']
      end

      if attributes.key?(:'gem_type')
        if (value = attributes[:'gem_type']).is_a?(Array)
          self.gem_type = value
        end
      end

      if attributes.key?(:'golf_club_flex')
        self.golf_club_flex = attributes[:'golf_club_flex']
      end

      if attributes.key?(:'hand_orientation')
        self.hand_orientation = attributes[:'hand_orientation']
      end

      if attributes.key?(:'hardware_platform')
        self.hardware_platform = attributes[:'hardware_platform']
      end

      if attributes.key?(:'material_type')
        if (value = attributes[:'material_type']).is_a?(Array)
          self.material_type = value
        end
      end

      if attributes.key?(:'metal_type')
        self.metal_type = attributes[:'metal_type']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'operating_system')
        if (value = attributes[:'operating_system']).is_a?(Array)
          self.operating_system = value
        end
      end

      if attributes.key?(:'product_type_subcategory')
        self.product_type_subcategory = attributes[:'product_type_subcategory']
      end

      if attributes.key?(:'ring_size')
        self.ring_size = attributes[:'ring_size']
      end

      if attributes.key?(:'shaft_material')
        self.shaft_material = attributes[:'shaft_material']
      end

      if attributes.key?(:'scent')
        self.scent = attributes[:'scent']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'size_per_pearl')
        self.size_per_pearl = attributes[:'size_per_pearl']
      end

      if attributes.key?(:'golf_club_loft')
        self.golf_club_loft = attributes[:'golf_club_loft']
      end

      if attributes.key?(:'total_diamond_weight')
        self.total_diamond_weight = attributes[:'total_diamond_weight']
      end

      if attributes.key?(:'total_gem_weight')
        self.total_gem_weight = attributes[:'total_gem_weight']
      end

      if attributes.key?(:'package_quantity')
        self.package_quantity = attributes[:'package_quantity']
      end

      if attributes.key?(:'item_dimensions')
        self.item_dimensions = attributes[:'item_dimensions']
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
          identifiers == o.identifiers &&
          color == o.color &&
          edition == o.edition &&
          flavor == o.flavor &&
          gem_type == o.gem_type &&
          golf_club_flex == o.golf_club_flex &&
          hand_orientation == o.hand_orientation &&
          hardware_platform == o.hardware_platform &&
          material_type == o.material_type &&
          metal_type == o.metal_type &&
          model == o.model &&
          operating_system == o.operating_system &&
          product_type_subcategory == o.product_type_subcategory &&
          ring_size == o.ring_size &&
          shaft_material == o.shaft_material &&
          scent == o.scent &&
          size == o.size &&
          size_per_pearl == o.size_per_pearl &&
          golf_club_loft == o.golf_club_loft &&
          total_diamond_weight == o.total_diamond_weight &&
          total_gem_weight == o.total_gem_weight &&
          package_quantity == o.package_quantity &&
          item_dimensions == o.item_dimensions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [identifiers, color, edition, flavor, gem_type, golf_club_flex, hand_orientation, hardware_platform, material_type, metal_type, model, operating_system, product_type_subcategory, ring_size, shaft_material, scent, size, size_per_pearl, golf_club_loft, total_diamond_weight, total_gem_weight, package_quantity, item_dimensions].hash
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
        AmznSpApi::CatalogItemsApiModel.const_get(type).build_from_hash(value)
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
