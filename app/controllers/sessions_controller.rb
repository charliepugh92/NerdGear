class SessionsController < ApplicationController

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    if @session.valid?
      session[:account] = login_as @session.account
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    session[:account] = nil
    redirect_to request.referer
  end

  private

  def session_params
    params[:session]
  end
end
