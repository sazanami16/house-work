class CreateNices < ActiveRecord::Migration[6.0]
  def change
    create_table :nices do |t|

      t.timestamps
    end
  end
end
