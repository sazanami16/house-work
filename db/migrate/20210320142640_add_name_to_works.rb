class AddNameToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :name, :string
    add_column :works, :rule, :string
  end
end
