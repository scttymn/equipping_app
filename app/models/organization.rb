class Organization < ApplicationRecord
  belongs_to :parent_organization
  belongs_to :address
end
