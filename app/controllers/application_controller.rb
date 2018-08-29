class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception
  prepend_view_path Rails.root.join('frontend')
end
