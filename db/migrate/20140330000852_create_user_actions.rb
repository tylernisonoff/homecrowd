class CreateUserActions < ActiveRecord::Migration
  def change
    create_table :user_actions do |t|
      t.integer :user_id
      t.string :action_type
      t.string :obj_type
      t.integer :obj_id

      t.timestamps
    end
  end
end
