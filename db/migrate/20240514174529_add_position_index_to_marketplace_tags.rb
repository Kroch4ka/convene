class AddPositionIndexToMarketplaceTags < ActiveRecord::Migration[7.1]
  disable_ddl_transaction!

  def change
    add_index :marketplace_tags, [:bazaar_id, :position], unique: true, algorithm: :concurrently
  end
end
