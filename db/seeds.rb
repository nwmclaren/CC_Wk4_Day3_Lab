require_relative('../models/student')

# Student.delete_all()

student1 = Student.new({
  'first_name' => 'Bloggy',
  'last_name' => 'Magicguy',
  'house' => 'Hufflepuff',
  'age' => '14'
  })

student2 = Student.new({
    'first_name' => 'Plop',
    'last_name' => 'Undergrowth',
    'house' => 'Griffindor',
    'age' => '12'
})

student1.save()
student2.save()
