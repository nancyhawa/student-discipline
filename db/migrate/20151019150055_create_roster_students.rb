class CreateRosterStudents < ActiveRecord::Migration
  def change
    create_table :roster_students do |t|
      t.string :roster_id
      t.string :student_id
    end
  end
end
