class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :trackable,
    :validatable

  validates :email, presence: true, length: {maximum: 255},
    format: {with: Devise.email_regexp}, uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {within: Devise.password_length}, allow_nil: true

  def update_password user_params
    reset_password_token_params = user_params[:reset_password_token]
    password = user_params[:password]
    password_confirmation = user_params[:password_confirmation]
    if reset_password_token_params &&
      reset_password_token == reset_password_token_params &&
      password && password_confirmation && password == password_confirmation
      ActiveRecord::Base.transaction do
        user_params[:reset_password_token] = nil
        self.update_attributes user_params
      end
      return true
    end
  end
end
