require 'schlepp-sink-fs/table_object/factory'

module Schlepp
  class Sink
    class Fs
      def initialize(model, root, opts = {})
        @model = model
        factory = Schlepp::Sink::Fs::TableObject::Factory.new(self, @model.name)
        @sink = Schlepp::Sink.new(model, factory, Array(opts[:filters]) || [])
      end

      def root
        @root ||= URI('file:///tmp/foo/')
      end

      def uri(basename)
        @uri ||= root.merge(basename)
      end

      def write(data)
        @sink.write(data)
      end

      def finalize
        @sink.finalize
      end

      attr_reader :model
      attr_reader :sink
    end
  end
end
