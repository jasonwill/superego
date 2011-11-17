#require "egoist"
require "rails"

module Egoist
  
  class Ego < Rails::Engine
    isolate_namespace Egoist
    
    initializer 'Egoist.controller' do |app|  
          ActiveSupport.on_load(:action_controller) do  
             include Egoist::ApplicationControllerDecorator  
          end
        end
    
    
    def self.portray(ego)
      if ego.downcase == "pnca"
        "Rocks!"
      else
        "Lame!"
      end
    end
    
  end
end