class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :name
      t.text :rule
      t.integer :weight
      t.timestamps
    end
  end
end
