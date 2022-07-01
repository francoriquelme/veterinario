class Pet < ApplicationRecord
  belongs_to :Client
  has_many :pet_histories
end
