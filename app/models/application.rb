class Application < ApplicationRecord
  has_many :pet_applications
  has_many :pets, through: :pets_applications

  validates :applicant_name, :street_address, :city, :state, :zip_code, :description, presence: true
end