class AddArrayTagToProducts < ActiveRecord::Migration
  def change
    add_column :products, :arr_tag, :string
  end
end
