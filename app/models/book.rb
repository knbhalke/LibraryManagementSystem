class Book < ApplicationRecord
  has_many :issuebookdate
  has_many :user , through: :issuebookdate
end
