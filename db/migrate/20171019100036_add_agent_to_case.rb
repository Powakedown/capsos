class AddAgentToCase < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :agent, :string
  end
end
