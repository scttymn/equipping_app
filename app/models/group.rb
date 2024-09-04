class Group < ApplicationRecord
  belongs_to :created_by, polymorphic: true
  belongs_to :step
  belongs_to :event
end
