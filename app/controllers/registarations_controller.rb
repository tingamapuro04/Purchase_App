class RegistrationsController < Devise::RegistrationsController
  def sign_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
