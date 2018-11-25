RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
  config.included_models << "Product"
  config.included_models << "Review"
  config.included_models << "Accessory"
  config.included_models << "Post"

  config.authorize_with do
    redirect_to main_app.root_path unless user_signed_in?
  end

end
