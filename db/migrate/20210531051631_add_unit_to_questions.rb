class AddUnitToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :unit, :string
  end
end
