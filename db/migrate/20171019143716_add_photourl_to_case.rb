class AddPhotourlToCase < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :photourl, :string
  end
end
