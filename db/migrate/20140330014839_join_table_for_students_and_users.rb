class JoinTableForStudentsAndUsers < ActiveRecord::Migration
  def change
    create_table :classrooms_users do |t|
      t.belongs_to :classroom
      t.belongs_to :user
    end
  end
end
