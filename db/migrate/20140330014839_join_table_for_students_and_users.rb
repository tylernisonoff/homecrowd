class JoinTableForStudentsAndUsers < ActiveRecord::Migration
  def change
    create_table :classrooms_students do |t|
      t.belongs_to :classroom
      t.belongs_to :student
    end
    create_table :classrooms_teachers do |t|
      t.belongs_to :classroom
      t.belongs_to :teacher
    end

  end
end
