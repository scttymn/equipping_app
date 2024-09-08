class AddActiveToCotfcGroups < ActiveRecord::Migration[7.2]
  def change
    add_column :cotfc_groups, :active, :boolean, default: true
  end
end
