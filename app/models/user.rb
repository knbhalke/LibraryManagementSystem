class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :issuebookdate
  has_many :book , through: :issuebookdate

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
