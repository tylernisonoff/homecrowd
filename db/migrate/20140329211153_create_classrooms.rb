class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :subject_id
      t.string :name

      t.timestamps
    end
  end
end
