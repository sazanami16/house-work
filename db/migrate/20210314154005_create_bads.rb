class CreateBads < ActiveRecord::Migration[6.0]
  def change
    create_table :bads do |t|

      t.timestamps
    end
  end
end
