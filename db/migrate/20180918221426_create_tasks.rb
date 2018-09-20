class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :chore
      t.string :status
      t.string :completion_date

      t.timestamps
    end
  end
end
