class CreateStudyGuides < ActiveRecord::Migration
  def change
    create_table :study_guides do |t|
      t.integer :user_id
      t.integer :classroom_id
      t.string :doc_url
      t.string :name

      t.timestamps
    end
  end
end
