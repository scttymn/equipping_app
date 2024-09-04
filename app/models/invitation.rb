class Invitation < ApplicationRecord
  belongs_to :invited_by
  belongs_to :invitable, polymorphic: true
end
