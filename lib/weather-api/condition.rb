module WeatherAPI
  class Condition
    # the weather condition code, detailed at http://developer.yahoo.com/weather
    attr_reader :code

    # the date and time associated with these conditions.
    attr_reader :date

    # the temperature of the location.
    attr_reader :temp

    # the brief prose text description of the weather conditions of the location.
    attr_reader :text

    def initialize(payload)
      @code = payload[:code].to_i
      @date = Utils.parse_time payload[:date]
      @temp = payload[:temp].to_i
      @text = payload[:text]
    end
  end
end
