require 'egoist/version'
require 'egoist/ego' if defined?(Rails) && Rails::VERSION::MAJOR == 3

module Egoist
  #module Controllers
  #  autoload :Helpers, 'egoist/controllers/helpers'
  #end
  
  # Define a set of modules that are called when a mapping is added.
  #@helpers = Set.new
  #@helpers << Egoist::Controllers::Helpers
  
  #@helpers.each { |h| h.define_helpers('user') }
  
end
