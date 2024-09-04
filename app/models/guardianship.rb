class Guardianship < ApplicationRecord
  belongs_to :person
  belongs_to :guardian
end
