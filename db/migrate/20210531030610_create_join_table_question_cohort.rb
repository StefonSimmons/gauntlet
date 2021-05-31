class CreateJoinTableQuestionCohort < ActiveRecord::Migration[6.0]
  def change
    create_join_table :questions, :cohorts do |t|
      # t.index [:question_id, :cohort_id]
      # t.index [:cohort_id, :question_id]
      t.string :unit
    end
  end
end
