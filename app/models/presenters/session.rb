class Session < Presenter
  def_delegators :account, :email, :email=, :password, :password=, :errors, :errors=

  def account
    @account ||= Account.new
  end

  def valid?
    password_store = password
    @account = Account.find_by_email(email)
    if email == nil || password_store == nil || @account == nil || !@account.authenticate(password_store)
      errors.add(:email, 'and/or Password incorrect')
      return false
    end
    true
  end
end