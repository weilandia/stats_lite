module StatsLite
  module Functions
    def stats
      {
        count: count,
        sum: sum,
        max: max,
        min: min,
        mean: mean,
        median: median,
        mode: mode,
        range: range,
        variance: variance,
        standard_deviation: standard_deviation,
        interquartile_range: interquartile_range,
        lower_outlier_threshold: lower_outlier_threshold,
        upper_outlier_threshold: upper_outlier_threshold,
        quartiles: {
          q1: quartile_1,
          q2: quartile_2,
          q3: quartile_3
        }
      }
    end
  end
end
