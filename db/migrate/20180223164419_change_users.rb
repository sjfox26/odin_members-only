class ChangeUsers < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :member, :boolean, default: false
  end

  def down
    change_column :users, :member, :boolean, default: nil
  end
end
