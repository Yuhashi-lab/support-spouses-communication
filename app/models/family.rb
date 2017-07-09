class Family < ApplicationRecord
  has_one :hasband
  has_one :wife
  has_many :children
  has_many :talks
  has_many :must_todos
  has_many :want_todos
  has_many :schedules
end
