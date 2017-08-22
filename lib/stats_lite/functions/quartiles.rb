module StatsLite
  module Functions
    def quartile_1
      @_quartile_1 ||= percentile(25)
    end

    def quartile_2
      @_quartile_2 ||= percentile(50)
    end

    def quartile_3
      @_quartile_3 ||= percentile(75)
    end

    private

      def percentile(perc)
        return values.first if values.length == 1
        return values.last if perc == 100

        rank = perc / 100.0 * (values.size - 1)
        lower, upper = values[rank.floor, 2]

        lower + (upper - lower) * (rank - rank.floor)
      end
  end
end
