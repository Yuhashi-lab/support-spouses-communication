class QuestionAnswer < ApplicationRecord
  belongs_to :user, :polymorphic => true
  belongs_to :question
end
