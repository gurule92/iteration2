class CreateTierItems < ActiveRecord::Migration[6.1]
  def change
    create_table :tier_items do |t|
      t.string :name
      t.text :description
      t.integer :tier
      t.text :justification

      t.timestamps
    end
  end
end
