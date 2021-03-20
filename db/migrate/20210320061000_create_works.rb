class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :name, null: false
      t.text :rule, null: false
      t.integer :weight, null: false
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
