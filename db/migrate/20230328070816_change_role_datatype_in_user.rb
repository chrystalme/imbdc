class ChangeRoleDatatypeInUser < ActiveRecord::Migration[7.0]
  def change
    # rename_column :users, :role, :admin
    change_column :users, :admin, :boolean, default: false, using: 'admin::boolean'
  end
  # def down
  #   rename_column :users, :role, :admin
  # end
end
