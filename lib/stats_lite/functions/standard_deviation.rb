module StatsLite
  module Functions
    def standard_deviation
      @_standard_deviation ||= Math.sqrt(variance)
    end
  end
end
