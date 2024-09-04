class OrganizationPerson < ApplicationRecord
  belongs_to :person
  belongs_to :organization
end
