class AddUserImageIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_image_id, :integer
  end
end
