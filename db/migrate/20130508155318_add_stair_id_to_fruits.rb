class AddStairIdToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :stair_id, :integer
  end
end
