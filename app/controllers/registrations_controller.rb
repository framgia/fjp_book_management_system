class RegistrationsController < Devise::RegistrationsController
  protected
  def update_resource resource, params
    current_password = params[:current_password]
    if current_password.present?
      if current_password == params[:password]
        resource.errors.add :password, t("user.edit.not_same")
      else
        super
      end
    else
      resource.update_without_password params
    end
  end

  def after_update_path_for *args
    edit_user_registration_path if args[0]
  end

  def respond_with resource, opts = {}
    if params[:user][:avatar].present?
      render json: resource.avatar
    else
      super
    end
  end
end
