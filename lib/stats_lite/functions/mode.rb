module StatsLite
  module Functions
    def mode
      @_mode ||= values.group_by { |v| v }.values.max_by(&:length).first
    end
  end
end
