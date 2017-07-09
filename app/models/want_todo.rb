class WantTodo < ApplicationRecord
  belongs_to :user, :polymorphic => true
  belongs_to :family

end
