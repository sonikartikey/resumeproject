class AddUserIdToSkill < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :user_id, :integer
  end
end
