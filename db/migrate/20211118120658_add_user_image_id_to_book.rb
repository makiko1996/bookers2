class AddUserImageIdToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :user_image_id, :integer
  end
end
