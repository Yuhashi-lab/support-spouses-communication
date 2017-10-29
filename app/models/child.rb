class Child < ApplicationRecord
  belongs_to :family

  validates :name,      presence: true
  validates :birthday,  presence: true
end
