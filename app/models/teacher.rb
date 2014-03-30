class Teacher < User
  has_and_belongs_to_many :classrooms
end
