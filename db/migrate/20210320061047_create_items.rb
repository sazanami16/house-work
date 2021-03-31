class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,     null: false
      t.string :quantity, null: false
      t.integer :need_id, null:false
      t.references :work, foreign_key: true
      t.timestamps
    end
  end
end
