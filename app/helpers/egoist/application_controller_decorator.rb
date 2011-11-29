module Egoist
  module ApplicationControllerDecorator
  
  def authenticated?
     if !current_user
       #session[:return_to] = 'abc'
       respond_to do |format|
         format.html  { 
           redirect_to 'http://superego.local.dev'
         }
         format.json {
           render :json => { 'error' => 'Access Denied' }.to_json
         }
       end
     end
   end
  
  def current_user
     return nil unless session[:user_id]
     @current_user ||= User.find_by_uid(session[:user_id]['uid'])
   end
  end
   
end