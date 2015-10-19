class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.integer :student_id
      t.integer :staff_member_id
      t.string :type
      t.string :anecdotal
      t.string :text
      t.string :points
      t.string :integer
      t.date :date
      t.boolean :dean
      t.integer :period
      t.string :location
      t.string :infractions
    end
  end
end
