class CreateJoinTableUserCohort < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :cohorts do |t|
      # t.index [:user_id, :cohort_id]
      # t.index [:cohort_id, :user_id]
    end
  end
end
