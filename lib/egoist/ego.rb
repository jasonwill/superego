require "egoist"
require "rails"

module Egoist
  class Ego < Rails::Engine
    engine_name :egoist
    
    def self.portray(ego)
      if ego.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end
  end
end