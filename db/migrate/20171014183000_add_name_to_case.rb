class AddNameToCase < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :name, :string
    add_column :cases, :age, :integer
    add_column :cases, :phone, :integer
  end
end
