class ApplicationController < ActionController::Base
    load_and_authorize_resource unless: :devise_controller?
end
