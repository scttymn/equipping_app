class Message < ApplicationRecord
  belongs_to :messageable, polymorphic: true
  belongs_to :parent_message
  belongs_to :sender
end
