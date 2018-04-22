class RegistrationsController < Devise::RegistrationsController
  after_action :assign_role, only: :create
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

  def assign_role
  	if @user.persisted?
     @user.add_role :student 
    end
  end
end