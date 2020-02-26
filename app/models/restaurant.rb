class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :adress, presence: true
  validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'french', 'belgian'] }
end
