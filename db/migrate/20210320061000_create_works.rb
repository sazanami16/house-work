class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :name,    null: false
      t.string :rule,      null: false
      t.integer :weight_id, null: false
      t.timestamps
    end
  end
end
