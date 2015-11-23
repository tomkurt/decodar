module Decodar
  module Record
    class FreeCommunications < Base
      include Helper::Link

      specify_identifier 4

      specify_code :sequence_number, 2..5, :integer
      specify_code :detail_number, 6..9, :integer
      specify_code :communication, 32..111, :string
      specify_code :link_code, 127, :integer

      def store(file)
        file.free_communications = self
      end

    end
  end
end
