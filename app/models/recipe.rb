class Recipe < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
