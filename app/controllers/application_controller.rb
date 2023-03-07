# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :authenticate_user!, unless: :devise_controller?
  helper_method :check_admin

   private
    
   def check_admin
    unless current_user.is_admin?
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end

end
