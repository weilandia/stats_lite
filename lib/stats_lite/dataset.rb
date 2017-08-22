require "stats_lite/functions"
require "stats_lite/utils"

module StatsLite
  class Dataset
    include Utils
    include Functions

    attr_reader :raw, :values

    def initialize(raw)
      @raw = raw
      @values = convert(raw).sort!
    end
  end
end
