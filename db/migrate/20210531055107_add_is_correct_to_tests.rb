class AddIsCorrectToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :is_correct, :boolean
  end
end
