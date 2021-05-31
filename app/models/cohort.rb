class Cohort < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :questions
end
