require "active_support"

module Egoist
  module Controllers
    # Adds authentication helper methods to ApplicationController.
    module Helpers
      extend ActiveSupport::Concern

     
      # Define authentication helpers to be used inside the controllers
      # as before_filters or as current user instance/session accessors.
      def self.define_helpers(mapping='user') #:nodoc:
        class_eval <<-METHODS, __FILE__, __LINE__ + 1
          def authenticate_#{mapping}!()
            logger.debug("!!! authenticate_#{mapping}!")
          end

          def #{mapping}_signed_in?
            logger.debug("!!! #{mapping}_signed_in?")
          end

          def current_#{mapping}
            logger.debug("!!! current_#{mapping}")
          end

          def #{mapping}_session
            logger.debug("!!! #{mapping}_session")
          end
          
          def login_required
            logger.debug("!!! login_required")
          end
        METHODS

        ActiveSupport.on_load(:action_controller) do
          helper_method "current_#{mapping}", "#{mapping}_signed_in?", "#{mapping}_session", "login_required"
        end
      end
    
    end
  end
end
