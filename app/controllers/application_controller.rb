class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_order
  before_action :store_location

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  protected

 	def configure_permitted_parameters
 		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:mobile_number])
 	end

 	def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    elsif resource_or_scope == :admin
      new_admin_session_path
    else
      root_path
    end
	end

	def after_sign_in_path_for(resource_or_scope) 
    if resource_or_scope.class.name == "AdminUser"
      admin_dashboard_path
    else
      previous_path = session[:previous_url]
      session[:previous_url] = nil
      previous_path || homepage_homes_path
    end
	end

  def store_location
    if(request.path != "/users/sign_in" &&
       request.path != "/users/sign_up" &&
       request.path != "/users/password/new" &&
       request.path != "/users/password/edit" &&
       request.path != "/users/confirmation" &&
       request.path != "/users/sign_out" &&
       !request.xhr? && !current_user) # don't store ajax calls
        session[:previous_url] = request.fullpath if request.path == "/cart" 
    end
  end


end
