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
  class GetSovereigntyCampaigns200Ok
    # Unique ID for this campaign.
    attr_accessor :campaign_id

    # The structure item ID that is related to this campaign. 
    attr_accessor :structure_id

    # The solar system the structure is located in. 
    attr_accessor :solar_system_id

    # The constellation in which the campaign will take place. 
    attr_accessor :constellation_id

    # Type of event this campaign is for. tcu_defense, ihub_defense and station_defense are referred to as \"Defense Events\", station_freeport as \"Freeport Events\". 
    attr_accessor :event_type

    # Time the event is scheduled to start. 
    attr_accessor :start_time

    # Defending alliance, only present in Defense Events 
    attr_accessor :defender_id

    # Score for the defending alliance, only present in Defense Events. 
    attr_accessor :defender_score

    # Score for all attacking parties, only present in Defense Events. 
    attr_accessor :attackers_score

    # Alliance participating and their respective scores, only present in Freeport Events. 
    attr_accessor :participants

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
        :'campaign_id' => :'campaign_id',
        :'structure_id' => :'structure_id',
        :'solar_system_id' => :'solar_system_id',
        :'constellation_id' => :'constellation_id',
        :'event_type' => :'event_type',
        :'start_time' => :'start_time',
        :'defender_id' => :'defender_id',
        :'defender_score' => :'defender_score',
        :'attackers_score' => :'attackers_score',
        :'participants' => :'participants'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'campaign_id' => :'Integer',
        :'structure_id' => :'Integer',
        :'solar_system_id' => :'Integer',
        :'constellation_id' => :'Integer',
        :'event_type' => :'String',
        :'start_time' => :'DateTime',
        :'defender_id' => :'Integer',
        :'defender_score' => :'Float',
        :'attackers_score' => :'Float',
        :'participants' => :'Array<GetSovereigntyCampaignsParticipant>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.has_key?(:'structure_id')
        self.structure_id = attributes[:'structure_id']
      end

      if attributes.has_key?(:'solar_system_id')
        self.solar_system_id = attributes[:'solar_system_id']
      end

      if attributes.has_key?(:'constellation_id')
        self.constellation_id = attributes[:'constellation_id']
      end

      if attributes.has_key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.has_key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end

      if attributes.has_key?(:'defender_id')
        self.defender_id = attributes[:'defender_id']
      end

      if attributes.has_key?(:'defender_score')
        self.defender_score = attributes[:'defender_score']
      end

      if attributes.has_key?(:'attackers_score')
        self.attackers_score = attributes[:'attackers_score']
      end

      if attributes.has_key?(:'participants')
        if (value = attributes[:'participants']).is_a?(Array)
          self.participants = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @campaign_id.nil?
        invalid_properties.push("invalid value for 'campaign_id', campaign_id cannot be nil.")
      end

      if @structure_id.nil?
        invalid_properties.push("invalid value for 'structure_id', structure_id cannot be nil.")
      end

      if @solar_system_id.nil?
        invalid_properties.push("invalid value for 'solar_system_id', solar_system_id cannot be nil.")
      end

      if @constellation_id.nil?
        invalid_properties.push("invalid value for 'constellation_id', constellation_id cannot be nil.")
      end

      if @event_type.nil?
        invalid_properties.push("invalid value for 'event_type', event_type cannot be nil.")
      end

      if @start_time.nil?
        invalid_properties.push("invalid value for 'start_time', start_time cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @campaign_id.nil?
      return false if @structure_id.nil?
      return false if @solar_system_id.nil?
      return false if @constellation_id.nil?
      return false if @event_type.nil?
      event_type_validator = EnumAttributeValidator.new('String', ["tcu_defense", "ihub_defense", "station_defense", "station_freeport"])
      return false unless event_type_validator.valid?(@event_type)
      return false if @start_time.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(event_type)
      validator = EnumAttributeValidator.new('String', ["tcu_defense", "ihub_defense", "station_defense", "station_freeport"])
      unless validator.valid?(event_type)
        fail ArgumentError, "invalid value for 'event_type', must be one of #{validator.allowable_values}."
      end
      @event_type = event_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          campaign_id == o.campaign_id &&
          structure_id == o.structure_id &&
          solar_system_id == o.solar_system_id &&
          constellation_id == o.constellation_id &&
          event_type == o.event_type &&
          start_time == o.start_time &&
          defender_id == o.defender_id &&
          defender_score == o.defender_score &&
          attackers_score == o.attackers_score &&
          participants == o.participants
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [campaign_id, structure_id, solar_system_id, constellation_id, event_type, start_time, defender_id, defender_score, attackers_score, participants].hash
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
