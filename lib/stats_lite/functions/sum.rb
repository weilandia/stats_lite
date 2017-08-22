module StatsLite
  module Functions
    def sum
      @_sum ||= values.inject(:+)
    end
  end
end
