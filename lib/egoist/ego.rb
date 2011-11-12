module Egoist
  class Ego
    def self.portray(ego)
      if ego.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end
  end
end