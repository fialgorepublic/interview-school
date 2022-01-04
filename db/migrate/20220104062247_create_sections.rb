class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :teacher_id
      t.integer :subject_id
      t.integer :class_room_id

      t.timestamps
    end
  end
end
