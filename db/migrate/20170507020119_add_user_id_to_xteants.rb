class AddUserIdToXteants < ActiveRecord::Migration
  def change
    add_column :xteants, :user_id, :integer
  end
end
