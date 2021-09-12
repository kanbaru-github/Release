class Admin::SessionsController < Devise::SessionsController

  before_action :not_customer

  def after_sign_in_path_for(resource)
    admin_posts_path
  end

  def after_sign_out_path_for(resource)
    new_admin_session_path
  end

  def not_customer
    if customer_signed_in?
      redirect_to root_path
    end
  end

end
