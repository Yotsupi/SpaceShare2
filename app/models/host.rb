class Host < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spaces, dependent: :destroy
  
  with_options presence: true do
    validates :name
    validates :phone_number
    validates :email
  end
  
end
