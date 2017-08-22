module StatsLite
  module Utils
    def convert(raw)
      values = to_value(raw)
      values.map(&:to_f)
    end

    def empty_collection_default
      return nil
    end

    private

      def to_value(raw)
        raw.is_a?(Hash) ? raw.values : raw
      end
  end
end
