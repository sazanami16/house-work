class CreateBads < ActiveRecord::Migration[6.0]
  def change
    create_table :bads do |t|
      t.references :user, null:false
      t.references :report, null:false
      t.timestamps
    end
  end
end
