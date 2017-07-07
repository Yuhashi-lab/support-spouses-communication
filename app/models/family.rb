class Family < ApplicationRecord
  has_one :hasband
  has_one :wife
  has_many :children
end
