class Patient < ApplicationRecord
  belongs_to :doctor
  has_many :acute
  has_many :chronic

  validates :name, :email, :password, :doctor_id, presence: true
  validates :doctor, presence: true

end
