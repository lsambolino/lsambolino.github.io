# frozen_string_literal: true

module Jekyll
  class LiquidRenderer
    class Table
      GAUGES = [:count, :bytes, :time].freeze

      def initialize(stats)
        @stats = stats
      end

      def to_s(num_of_rows = 50)
        Jekyll::Profiler.tabulate(data_for_table(num_of_rows))
      end

      private

      def data_for_table(num_of_rows)
        sorted = @stats.sort_by { |_, file_stats| -file_stats[:time] }
        sorted = sorted.slice(0, num_of_rows)

        table  = [header_labels]
        sorted.each do |filename, file_stats|
          row = []
          row << filename
          row << file_stats[:count].to_s
          row << format_bytes(file_stats[:bytes])
          row << format("%.3f", file_stats[:time])
          table << row
        end

        table
      end

      def header_labels
        GAUGES.map { |gauge| gauge.to_s.capitalize }.unshift("Filename")
      end

      def format_bytes(bytes)
        bytes /= 1024.0
        format("%.2fK", bytes)
      end
    end
  end
end
