class AddTransmissionToCase < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :data_transmission, :boolean
  end
end
