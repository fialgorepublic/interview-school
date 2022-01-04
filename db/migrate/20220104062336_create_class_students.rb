class CreateClassStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :class_students do |t|
      t.integer :section_id
      t.integer :student_id

      t.timestamps
    end
  end
end
