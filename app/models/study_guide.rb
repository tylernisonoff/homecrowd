class StudyGuide < ActiveRecord::Base
  attr_accessible :classroom_id, :doc_url, :user_id, :name

  belongs_to :classroom
  belongs_to :user
end
