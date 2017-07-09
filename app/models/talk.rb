class Talk < ApplicationRecord
  belongs_to :family
  belongs_to :user, :polymorphic => true
end
