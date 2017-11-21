=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module EveESIClient
  # wallet transaction
  class GetCorporationsCorporationIdWalletsDivisionTransactions200Ok
    # Unique transaction ID
    attr_accessor :transaction_id

    # Date and time of transaction
    attr_accessor :date

    # type_id integer
    attr_accessor :type_id

    # location_id integer
    attr_accessor :location_id

    # Amount paid per unit
    attr_accessor :unit_price

    # quantity integer
    attr_accessor :quantity

    # client_id integer
    attr_accessor :client_id

    # is_buy boolean
    attr_accessor :is_buy

    # journal_ref_id integer
    attr_accessor :journal_ref_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transaction_id' => :'transaction_id',
        :'date' => :'date',
        :'type_id' => :'type_id',
        :'location_id' => :'location_id',
        :'unit_price' => :'unit_price',
        :'quantity' => :'quantity',
        :'client_id' => :'client_id',
        :'is_buy' => :'is_buy',
        :'journal_ref_id' => :'journal_ref_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'transaction_id' => :'Integer',
        :'date' => :'DateTime',
        :'type_id' => :'Integer',
        :'location_id' => :'Integer',
        :'unit_price' => :'Float',
        :'quantity' => :'Integer',
        :'client_id' => :'Integer',
        :'is_buy' => :'BOOLEAN',
        :'journal_ref_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.has_key?(:'is_buy')
        self.is_buy = attributes[:'is_buy']
      end

      if attributes.has_key?(:'journal_ref_id')
        self.journal_ref_id = attributes[:'journal_ref_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @transaction_id.nil?
        invalid_properties.push("invalid value for 'transaction_id', transaction_id cannot be nil.")
      end

      if @date.nil?
        invalid_properties.push("invalid value for 'date', date cannot be nil.")
      end

      if @type_id.nil?
        invalid_properties.push("invalid value for 'type_id', type_id cannot be nil.")
      end

      if @location_id.nil?
        invalid_properties.push("invalid value for 'location_id', location_id cannot be nil.")
      end

      if @unit_price.nil?
        invalid_properties.push("invalid value for 'unit_price', unit_price cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @client_id.nil?
        invalid_properties.push("invalid value for 'client_id', client_id cannot be nil.")
      end

      if @is_buy.nil?
        invalid_properties.push("invalid value for 'is_buy', is_buy cannot be nil.")
      end

      if @journal_ref_id.nil?
        invalid_properties.push("invalid value for 'journal_ref_id', journal_ref_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @transaction_id.nil?
      return false if @date.nil?
      return false if @type_id.nil?
      return false if @location_id.nil?
      return false if @unit_price.nil?
      return false if @quantity.nil?
      return false if @client_id.nil?
      return false if @is_buy.nil?
      return false if @journal_ref_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transaction_id == o.transaction_id &&
          date == o.date &&
          type_id == o.type_id &&
          location_id == o.location_id &&
          unit_price == o.unit_price &&
          quantity == o.quantity &&
          client_id == o.client_id &&
          is_buy == o.is_buy &&
          journal_ref_id == o.journal_ref_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [transaction_id, date, type_id, location_id, unit_price, quantity, client_id, is_buy, journal_ref_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
      when :BOOLEAN
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
        temp_model = EveESIClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
