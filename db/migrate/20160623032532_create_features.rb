class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :ft

      t.timestamps null: false
    end
  end
end
