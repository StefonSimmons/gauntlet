class AddGroupNameToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :group_name, :string
  end
end
