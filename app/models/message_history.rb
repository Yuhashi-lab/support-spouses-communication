class MessageHistory < ApplicationRecord
  belongs_to :family
  belongs_to :bot_message
end
