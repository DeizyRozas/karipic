class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one_attached :profile_picture

  def owner?
    is_owner # Verifica si el usuario es la dueña de la página
  end
  
  has_many :photos, dependent: :destroy
  has_many :comments

end
