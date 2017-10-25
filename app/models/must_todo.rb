class MustTodo < ApplicationRecord
  belongs_to :user, :polymorphic => true
  belongs_to :family
  belongs_to :hasband,  foreign_key: "user_id", optional: true
  belongs_to :wife,     foreign_key: "user_id", optional: true
end
