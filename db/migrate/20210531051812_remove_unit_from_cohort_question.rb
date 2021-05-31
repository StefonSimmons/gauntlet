class RemoveUnitFromCohortQuestion < ActiveRecord::Migration[6.0]
  def change
    remove_column :cohorts_questions, :unit, :string
  end
end
