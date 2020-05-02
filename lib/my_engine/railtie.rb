require 'my_engine/content.rb'

module MyEngine
  class Railtie < ::Rails::Railtie
  	initializer "content load" do 
	  	ActiveSupport.on_load(:active_record) do
	   		 include MyEngine::Content
	    end
  	end
  end
end
