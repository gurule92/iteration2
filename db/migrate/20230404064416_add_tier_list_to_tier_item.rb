class AddTierListToTierItem < ActiveRecord::Migration[6.1]
  def change
    add_column :tier_items, :tierList, :string
  end
end
