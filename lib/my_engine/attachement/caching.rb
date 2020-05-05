module MyEngine
  #If you use autoload under then directly use caching. And you should not used attachement as a module although it is under "attachment" folder
  # if you used module Attachement then you need to uncomment the module Attachement line.
  # module Attachement
    module Caching
      p "here it is"
      def cache_digest
        Digest::SHA256.hexdigest("sandip")
      end
    # end
  end
end
