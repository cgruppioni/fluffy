class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers

  def current_user
    super || Guest.new
  end
end
