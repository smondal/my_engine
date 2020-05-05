require "my_engine/railtie"

p "loading engine"
module MyEngine
	extend ActiveSupport::Autoload

	autoload :Content


	# autoload_under "attachement" do
	# 	# eager_autoload do
	# 		autoload :Caching
	# 	# end
	# end

	autoload :Caching, "my_engine/attachement/caching"
	# module Attachement
	# 	extend ActiveSupport::Autoload
	# 	autoload :Caching
	# end
end
