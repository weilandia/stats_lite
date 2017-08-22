module StatsLite
  module Functions
    # P = L/N * 100
    def percentile_rank(val)
      rank_values = values.dup

      if rank_values.index(val).nil?
        rank_values << val
        rank_values.sort!
      end

      lower_count = rank_values.index(val).to_f

      (lower_count/rank_values.length) * 100
    end
  end
end
