# frozen_string_literal: true

module Sass
  class Embedded
    # The {ResilientDispatcher} class.
    #
    # It recovers from failures and continues to function.
    class ResilientDispatcher
      def initialize
        @dispatcher = Dispatcher.new
        @mutex = Mutex.new
      end

      def close
        @mutex.synchronize do
          @dispatcher.close
        end
      end

      def closed?
        @mutex.synchronize do
          @dispatcher.closed?
        end
      end

      def connect(host)
        @dispatcher.connect(host)
      rescue Errno::EBUSY
        @mutex.synchronize do
          @dispatcher.connect(host)
        rescue Errno::EBUSY
          @dispatcher = Dispatcher.new
          @dispatcher.connect(host)
        end
      end
    end

    private_constant :ResilientDispatcher
  end
end
