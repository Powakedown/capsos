class AddWayToCase < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :way, :string
  end
end
