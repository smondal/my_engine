module MyEngine
  module Attachement
    module Caching
      def cache_digest
        Digest::SHA256.hexdigest("sandip")
      end
    end
  end
end
