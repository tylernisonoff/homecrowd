# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s = []
s <<  {first_name: 'Tyler', last_name: 'Nisonoff', email: 'tylernisonoff@gmail.com', password: 'tylernisonoff55'}
s <<  {first_name: 'Michael', last_name: 'Lai', email: 'michaellai@gmail.com', password: 'tylernisonoff55'}
s <<  {first_name: 'Chinmay', last_name: 'Patwardhan', email: 'chinmay@gmail.com', password: 'tylernisonoff55'}
students = s.map{|st| Student.create(st)}

puts "created #{students.size} students"

t = []
t <<  {first_name: 'John', last_name: 'Smith', email: 'johnsmith@gmail.com', password: 'tylernisonoff55'}
teachers = t.map{|te| Teacher.create(te)}

puts "created #{teachers.size} teachers"

sub  = []
sub << {name: 'Math'}
sub << {name: 'Chemistry'}
sub << {name: 'Biology'}
subjects = sub.map{|su| Subject.create(su)}

puts "created #{subjects.size} subjects"

cl = []
cl << {name: 'Bio 101', subject_id: Subject.find_by_name('Biology').id}
cl << {name: 'AP Bio', subject_id: Subject.find_by_name('Biology').id}
cl << {name: 'Calculus', subject_id: Subject.find_by_name('Math').id}
cl << {name: 'Geometry', subject_id: Subject.find_by_name( 'Math').id}
cl << {name: 'Chem 101', subject_id: Subject.find_by_name('Chemistry').id}
cl << {name: 'AP Chemistry', subject_id: Subject.find_by_name('Chemistry').id}
classrooms = cl.map{|c| Classroom.create(c)}

puts "created #{classrooms.size} classrooms"

inc = []
inc << {create_guide_score: 5, update_guide_score: 3, view_guide_score: 1, classroom_id: Classroom.find_by_name('Bio 101').id}
inc << {create_guide_score: 5, update_guide_score: 3, view_guide_score: 1, classroom_id: Classroom.find_by_name('AP Bio').id}
inc << {create_guide_score: 3, update_guide_score: 6, view_guide_score: 3, classroom_id: Classroom.find_by_name('Calculus').id}
inc << {create_guide_score: 12, update_guide_score: 8, view_guide_score: 2, classroom_id: Classroom.find_by_name('Geometry').id}
inc << {create_guide_score: 8, update_guide_score: 3, view_guide_score: 1, classroom_id: Classroom.find_by_name('Chem 101').id}
inc << {create_guide_score: 10, update_guide_score: 6, view_guide_score: 3, classroom_id: Classroom.find_by_name('AP Chemistry').id}
incentives = inc.map{|i| IncentiveScheme.create(i)}

puts "created #{incentives.size} incentives"
