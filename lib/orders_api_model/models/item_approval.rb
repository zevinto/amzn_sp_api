=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module AmznSpApi::OrdersApiModel
  # Generic item approval. Check the applicable restrictions at the specific approval type schemas.
  class ItemApproval
    # Sequence number of the item approval. Each ItemApproval gets its sequenceId automatically from a monotonic increasing function.
    attr_accessor :sequence_id

    # Timestamp when the ItemApproval was recorded by Amazon's internal order approvals system. In ISO 8601 date time format.
    attr_accessor :timestamp

    # High level actors involved in the approval process.
    attr_accessor :actor

    # Person or system that triggers the approval actions on behalf of the actor.
    attr_accessor :approver

    attr_accessor :approval_action

    # Status of approval action.
    attr_accessor :approval_action_process_status

    # Optional message to communicate optional additional context about the current status of the approval action.
    attr_accessor :approval_action_process_status_message

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
        :'sequence_id' => :'SequenceId',
        :'timestamp' => :'Timestamp',
        :'actor' => :'Actor',
        :'approver' => :'Approver',
        :'approval_action' => :'ApprovalAction',
        :'approval_action_process_status' => :'ApprovalActionProcessStatus',
        :'approval_action_process_status_message' => :'ApprovalActionProcessStatusMessage'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sequence_id' => :'Object',
        :'timestamp' => :'Object',
        :'actor' => :'Object',
        :'approver' => :'Object',
        :'approval_action' => :'Object',
        :'approval_action_process_status' => :'Object',
        :'approval_action_process_status_message' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmznSpApi::OrdersApiModel::ItemApproval` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmznSpApi::OrdersApiModel::ItemApproval`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sequence_id')
        self.sequence_id = attributes[:'sequence_id']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'actor')
        self.actor = attributes[:'actor']
      end

      if attributes.key?(:'approver')
        self.approver = attributes[:'approver']
      end

      if attributes.key?(:'approval_action')
        self.approval_action = attributes[:'approval_action']
      end

      if attributes.key?(:'approval_action_process_status')
        self.approval_action_process_status = attributes[:'approval_action_process_status']
      end

      if attributes.key?(:'approval_action_process_status_message')
        self.approval_action_process_status_message = attributes[:'approval_action_process_status_message']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sequence_id.nil?
        invalid_properties.push('invalid value for "sequence_id", sequence_id cannot be nil.')
      end

      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      if @actor.nil?
        invalid_properties.push('invalid value for "actor", actor cannot be nil.')
      end

      if @approval_action.nil?
        invalid_properties.push('invalid value for "approval_action", approval_action cannot be nil.')
      end

      if @approval_action_process_status.nil?
        invalid_properties.push('invalid value for "approval_action_process_status", approval_action_process_status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sequence_id.nil?
      return false if @timestamp.nil?
      return false if @actor.nil?
      actor_validator = EnumAttributeValidator.new('Object', ['SELLING_PARTNER', 'AMAZON'])
      return false unless actor_validator.valid?(@actor)
      return false if @approval_action.nil?
      return false if @approval_action_process_status.nil?
      approval_action_process_status_validator = EnumAttributeValidator.new('Object', ['PROCESSING', 'SUCCESS', 'ERROR'])
      return false unless approval_action_process_status_validator.valid?(@approval_action_process_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] actor Object to be assigned
    def actor=(actor)
      validator = EnumAttributeValidator.new('Object', ['SELLING_PARTNER', 'AMAZON'])
      unless validator.valid?(actor)
        fail ArgumentError, "invalid value for \"actor\", must be one of #{validator.allowable_values}."
      end
      @actor = actor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] approval_action_process_status Object to be assigned
    def approval_action_process_status=(approval_action_process_status)
      validator = EnumAttributeValidator.new('Object', ['PROCESSING', 'SUCCESS', 'ERROR'])
      unless validator.valid?(approval_action_process_status)
        fail ArgumentError, "invalid value for \"approval_action_process_status\", must be one of #{validator.allowable_values}."
      end
      @approval_action_process_status = approval_action_process_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sequence_id == o.sequence_id &&
          timestamp == o.timestamp &&
          actor == o.actor &&
          approver == o.approver &&
          approval_action == o.approval_action &&
          approval_action_process_status == o.approval_action_process_status &&
          approval_action_process_status_message == o.approval_action_process_status_message
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sequence_id, timestamp, actor, approver, approval_action, approval_action_process_status, approval_action_process_status_message].hash
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
        AmznSpApi::OrdersApiModel.const_get(type).build_from_hash(value)
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
