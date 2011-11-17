module Egoist
  class ApplicationController < ActionController::Base

    helper Egoist::ApplicationControllerDecorator
    
  end
end