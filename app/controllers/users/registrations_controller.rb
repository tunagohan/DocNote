class Users::RegistrationsController < Devise::RegistrationsController
  before_action :create, only: [:complete]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  def cancel
    super
  end

  protected

  def configure_sign_up_params
    params.require(:user).permit(:username, :email, :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :password,
                                 :password_confirmation)
  end

end
