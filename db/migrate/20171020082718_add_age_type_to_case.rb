class AddAgeTypeToCase < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :age_type, :string
  end
end
