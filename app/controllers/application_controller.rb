class ApplicationController < ActionController::API
  before_action :authenticate_user!
  include DeviseTokenAuth::Concerns::SetUserByToken
end
