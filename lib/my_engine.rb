require "my_engine/railtie"

p "loading engine"
module MyEngine
	extend ActiveSupport::Autoload

	autoload :Content

	module Attachement
		extend ActiveSupport::Autoload
		autoload :Caching
	end
end
