class ApplicationController < ActionController::Base

  include Pundit::Authorization

  rescue_from Pundit::NotAuthorizedError, with: :admin_not_authorized

		def admin_not_authorized
			flash[:alert] = "You are not authorized Person to perform this action."
			redirect_to root_path
		end

    #authorization context will be available to policies.
		def pundit_user
      current_admin
    end

end
