class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :message, null:false
      t.references :user, null:false
      t.references :work, null:false
      t.timestamps
    end
  end
end
