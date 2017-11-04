class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:customer).permit(:name, :address, :city, :postal_code, \
                                     :province_id, :email, :password, \
                                     :password_confirmation)
  end

  def account_update_params
    params.require(:customer).permit(:name, :address, :city, :postal_code, \
                                     :province_id, :email, :password, \
                                     :password_confirmation, :current_password)
  end
end
