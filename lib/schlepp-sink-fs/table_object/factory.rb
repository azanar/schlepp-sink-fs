require 'schlepp-sink-fs/table_object/writer'
module Schlepp
  class Sink
    class Fs
      class TableObject
        class Factory
          def initialize(sink, basename)
            @sink = sink
            @basename = basename
          end

          def model
            @sink.model
          end

          def url
            @url ||= URI(@sink.root.merge(@basename))
          end

          def writer(to)
            Writer.new(to)
          end
        end
      end
    end
  end
end
