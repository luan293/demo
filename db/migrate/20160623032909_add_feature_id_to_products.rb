class AddFeatureIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :feature_id, :integer
  end
end
