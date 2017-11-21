=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module EveESIClient
  # 200 ok object
  class GetKillmailsKillmailIdKillmailHashOk
    # ID of the killmail
    attr_accessor :killmail_id

    # Time that the victim was killed and the killmail generated 
    attr_accessor :killmail_time

    attr_accessor :victim

    # attackers array
    attr_accessor :attackers

    # Solar system that the kill took place in 
    attr_accessor :solar_system_id

    # Moon if the kill took place at one
    attr_accessor :moon_id

    # War if the killmail is generated in relation to an official war 
    attr_accessor :war_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'killmail_id' => :'killmail_id',
        :'killmail_time' => :'killmail_time',
        :'victim' => :'victim',
        :'attackers' => :'attackers',
        :'solar_system_id' => :'solar_system_id',
        :'moon_id' => :'moon_id',
        :'war_id' => :'war_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'killmail_id' => :'Integer',
        :'killmail_time' => :'DateTime',
        :'victim' => :'GetKillmailsKillmailIdKillmailHashVictim',
        :'attackers' => :'Array<GetKillmailsKillmailIdKillmailHashAttacker>',
        :'solar_system_id' => :'Integer',
        :'moon_id' => :'Integer',
        :'war_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'killmail_id')
        self.killmail_id = attributes[:'killmail_id']
      end

      if attributes.has_key?(:'killmail_time')
        self.killmail_time = attributes[:'killmail_time']
      end

      if attributes.has_key?(:'victim')
        self.victim = attributes[:'victim']
      end

      if attributes.has_key?(:'attackers')
        if (value = attributes[:'attackers']).is_a?(Array)
          self.attackers = value
        end
      end

      if attributes.has_key?(:'solar_system_id')
        self.solar_system_id = attributes[:'solar_system_id']
      end

      if attributes.has_key?(:'moon_id')
        self.moon_id = attributes[:'moon_id']
      end

      if attributes.has_key?(:'war_id')
        self.war_id = attributes[:'war_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @killmail_id.nil?
        invalid_properties.push("invalid value for 'killmail_id', killmail_id cannot be nil.")
      end

      if @killmail_time.nil?
        invalid_properties.push("invalid value for 'killmail_time', killmail_time cannot be nil.")
      end

      if @victim.nil?
        invalid_properties.push("invalid value for 'victim', victim cannot be nil.")
      end

      if @attackers.nil?
        invalid_properties.push("invalid value for 'attackers', attackers cannot be nil.")
      end

      if @solar_system_id.nil?
        invalid_properties.push("invalid value for 'solar_system_id', solar_system_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @killmail_id.nil?
      return false if @killmail_time.nil?
      return false if @victim.nil?
      return false if @attackers.nil?
      return false if @solar_system_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          killmail_id == o.killmail_id &&
          killmail_time == o.killmail_time &&
          victim == o.victim &&
          attackers == o.attackers &&
          solar_system_id == o.solar_system_id &&
          moon_id == o.moon_id &&
          war_id == o.war_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [killmail_id, killmail_time, victim, attackers, solar_system_id, moon_id, war_id].hash
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
