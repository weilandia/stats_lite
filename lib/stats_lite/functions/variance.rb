module StatsLite
  module Functions
    def variance
      @_variance ||= values.map { |v| (mean - v) ** 2 }.inject(:+) / count
    end
  end
end
