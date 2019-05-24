# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Field.create!(fieldName: "D-MAVT")
Type.create!(typeName: "Theorie")
Type.create!(typeName: "Übung")
Type.create!(typeName: "Lösung")
Semester.create!(semesterHalf: 1, semesterYear: 2017)
Semester.create!(semesterHalf: 2, semesterYear: 2017)
Subject.create!(subjectName: "Analysis", semester_id: 1)
Subject.create!(subjectName: "Analysis", semester_id: 2)
Subject.create!(subjectName: "Mechanik", semester_id: 1)
Subject.create!(subjectName: "Mechanik", semester_id: 2)
User.create!(email: "testuser@example.com", password: "password")
Link.create!(linkUrl: "db reset 1", linkWeek: 1, subject_id: 1, field_id: 1, semester_id: 1, type_id: 1)
Link.create!(linkUrl: "db reset 2", linkWeek: 2, subject_id: 1, field_id: 1, semester_id: 1, type_id: 1)
Link.create!(linkUrl: "db reset 3", linkWeek: 3, subject_id: 1, field_id: 1, semester_id: 1, type_id: 1)
Link.create!(linkUrl: "db reset 4", linkWeek: 1, subject_id: 1, field_id: 1, semester_id: 1, type_id: 2)
Link.create!(linkUrl: "db reset 5", linkWeek: 4, subject_id: 1, field_id: 1, semester_id: 1, type_id: 3)
Link.create!(linkUrl: "db reset 6", linkWeek: 2, subject_id: 2, field_id: 1, semester_id: 1, type_id: 1)
Link.create!(linkUrl: "db reset 7", linkWeek: 3, subject_id: 2, field_id: 1, semester_id: 1, type_id: 2)
Link.create!(linkUrl: "db reset 8", linkWeek: 1, subject_id: 2, field_id: 1, semester_id: 2, type_id: 3)
Link.create!(linkUrl: "db reset 9", linkWeek: 2, subject_id: 2, field_id: 1, semester_id: 2, type_id: 1)
