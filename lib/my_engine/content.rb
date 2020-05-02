module MyEngine
	module Content
		extend ActiveSupport::Concern

		def text_sandip
			p "sandip"
		end

		class_methods do
			def has_rich_sandip(name)
				class_eval <<-CODE, __FILE__, __LINE__ + 1
					def #{name}
						p  "hello"
				  end

				  def #{name}?
				  	true
				  end

			  CODE
		 	end
		end
	end	
end
