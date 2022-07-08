# Should be super class for all this apps controllers
class ApplicationController < ActionController::API
  
 #include ::ActionView::Layouts
 #render layout 'application'
 def authenticate
      case request.format
      when Mime[:xml], Mime[:atom]
        if user = authenticate_with_http_basic { |u, p | @account.users.authenticate(u, p) }
          @current_user = user
        else
          request_http_basic_authentication
        end
      else
        if session_authenticated?
          @current_user = @account.users.find(session[:authenticated][:user_id])
        else
          redirect_to(login_url) and return false
        end
      end
 end
 
  def status
    render json: { status: 'ok', environment: Rails.env }
  end
end
