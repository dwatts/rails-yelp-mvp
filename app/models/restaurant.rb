class Restaurant < ApplicationRecord
  RESTSTYLES = %w(chinese italian japanese french belgian)

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: RESTSTYLES }
  has_many :reviews, dependent: :destroy

end
