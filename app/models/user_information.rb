class UserInformation < ApplicationRecord
  belongs_to :user

  validates :name, :email, :address, :document_number,  presence: true, uniqueness: true
end
