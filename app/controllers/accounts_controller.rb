class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      session[:account] = login_as @account
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

  def account_params
    params.require(:account).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
