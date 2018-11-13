class ApplicationController < ActionController::Base

  #   before_action :require_login

  #   private

  #   def require_login
  #     unless current_user
  #       redirect_to root_path
  #     end
  #   end

  #   before_action :redirect_not_signed_in

  #   protected
  #   def redirect_not_signed_in
  #     current_uri = request.env["PATH_INFO"]
  #     unless user_signed_in? && current_uri == home_path
  #       redirect_to home_path
  #     end
  #   end
end
