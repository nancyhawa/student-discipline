class CreateRoster < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :name
      t.string :staff_member_id
    end
  end
end
