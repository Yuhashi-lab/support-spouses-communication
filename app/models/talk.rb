class Talk < ApplicationRecord
  belongs_to :family
  belongs_to :hasband,  foreign_key: "user_id"
  belongs_to :wife,     foreign_key: "user_id"
  belongs_to :user, :polymorphic => true
end
