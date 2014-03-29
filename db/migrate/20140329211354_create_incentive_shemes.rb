class CreateIncentiveShemes < ActiveRecord::Migration
  def change
    create_table :incentive_schemes do |t|
      t.integer :classroom_id
      t.integer :create_guide_score, default: 0
      t.integer :update_guide_score, default: 0
      t.integer :view_guide_score, default: 0

      t.timestamps
    end
  end
end
