module StatsLite
  module Functions
    def dataset_without_outliers
      StatsLite::Dataset.new(reject_outliers)
    end

    def lower_outlier_threshold
      @_lower_outlier_threshold ||= quartile_1 - (1.5 * interquartile_range)
    end

    def upper_outlier_threshold
      @_upper_outlier_threshold ||= quartile_3 + (1.5 * interquartile_range)
    end

    def interquartile_range
      @_interquartile_range ||= quartile_3 - quartile_1
    end

    private

      def reject_outliers
        values.reject do |val|
          val < lower_outlier_threshold || val > upper_outlier_threshold
        end
      end
  end
end
