class RemoveUserIntroductionFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_introduction, :text
  end
end
