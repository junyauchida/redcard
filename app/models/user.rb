class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :cardlists, dependent: :destroy
  has_many :favorites, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:user_name]

  validates :user_name, presence: true, length: {in:1..10}

  attachment :image

 def email_required?
   false
 end
 def email_changed?
   false
 end

end
