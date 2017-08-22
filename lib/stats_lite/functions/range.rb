module StatsLite
  module Functions
    def range
      max - min
    end

    def max
      values.max
    end

    def min
      values.min
    end
  end
end
