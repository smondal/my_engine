module MyEngine
	module Content
		extend ActiveSupport::Concern

		#If you use autoload under then directly use caching. And you should not used attachement as a module although it is under "attachment" folder
		include Caching

		def text_sandip
			 "sandip"
		end

		class_methods do
			def has_class(name)
				class_eval <<-CODE, __FILE__, __LINE__ + 1
					def #{name}
						"hello #{name}"
				  end

				  def #{name}?
				  	true
				  end

			  CODE
		 	end

			def has_instance(name)
				instance_eval <<-CODE, __FILE__, __LINE__ +1

					def #{name}
						"display instance #{name}"
					end

				CODE
			end
		end
	end
end
