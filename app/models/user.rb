class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # Validación de longitud máxima
  validates :email, length: { maximum: 40 }

  # Validación de formato para dominios específicos
  VALID_EMAIL = /\A[\w+\-.]+@(gmail\.com|uc\.cl)\z/i
  validates :email, format: { with: VALID_EMAIL }

  # Validación para asegurar que la contraseña incluya al menos una mayúscula
  validates :password, format: { with: /\A(?=.*[A-Z]).*\z/, message: "debe contener al menos una letra mayúscula" }
end
