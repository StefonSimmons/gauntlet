class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.references :question, null: false, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
