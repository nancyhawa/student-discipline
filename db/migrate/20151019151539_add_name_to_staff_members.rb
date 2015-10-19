class AddNameToStaffMembers < ActiveRecord::Migration
  def change
    add_column :staff_members, :name, :string
  end
end
