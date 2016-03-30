require "rails_admin_epic_editor/engine"

module RailsAdminEpicEditor
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
	module Config
		module Fields
			module Types
				class EpicEditor < RailsAdmin::Config::Fields::Base
					RailsAdmin::Config::Fields::Types::register(self)
					register_instance_option :partial do
						:form_epic_editor
					end

					register_instance_option :preview_css_file do
						'application.css'
					end

					register_instance_option :preview_selector do
						''
					end
				end
			end
		end
	end
end
