class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :collect_categories

  def collect_categories
    @root_categories = Category.where(parent_category_id: nil)
  end

  def login_as(account)
    session[:account] = { id: account.id, first_name: account.first_name }
  end
end
