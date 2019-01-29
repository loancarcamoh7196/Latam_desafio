class Sale < ApplicationRecord
  validates :detail, presence: true
	validates :cod, uniqueness: true
	validates :category, inclusion: %w(uno dos tres cuatro cinco)
end
