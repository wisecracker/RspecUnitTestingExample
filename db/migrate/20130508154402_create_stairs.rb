class CreateStairs < ActiveRecord::Migration
  def change
    create_table :stairs do |t|

      t.timestamps
    end
  end
end
