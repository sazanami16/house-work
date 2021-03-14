class CreateNices < ActiveRecord::Migration[6.0]
  def change
    create_table :nices do |t|
      t.references :user, null:false
      t.references :report, null:false
      t.timestamps
    end
  end
end
