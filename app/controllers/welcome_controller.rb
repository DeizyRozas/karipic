class WelcomeController < ApplicationController
  
  def index
    @user = User.new
    @karina_photos = User.find_by(name: "Karina").photos
  end

  def after_sign_in_path_for(resource)
    root_path # Redirección después del inicio de sesión
  end

  def after_sign_up_path_for(resource)
    root_path # Redirección después del registro
  end
end
