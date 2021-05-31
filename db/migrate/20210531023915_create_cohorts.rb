class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.boolean :is_hidden

      t.timestamps
    end
  end
end
