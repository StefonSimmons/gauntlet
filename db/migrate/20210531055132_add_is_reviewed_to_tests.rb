class AddIsReviewedToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :is_reviewed, :boolean
  end
end
