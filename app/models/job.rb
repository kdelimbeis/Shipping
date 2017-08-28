class Job < ApplicationRecord
  has_and_belongs_to_many :ships
  belongs_to :user
end
