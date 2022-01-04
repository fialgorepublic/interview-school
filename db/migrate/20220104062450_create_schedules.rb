class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :section_id
      t.integer :student_id

      t.timestamps
    end
  end
end
