# frozen_string_literal: true

module Admin
  class ApplicationController < ApplicationController
    before_action :authorize_admin!

    def index; end

    def authorize_admin!
      authenticate_user!

      unless current_user.admin?
        flash[:alert] = 'You must be an Admin to do that.'
        redirect_to root_path
      end
    end
  end
end
