require_relative('../db/sql_runner')

class Student

attr_reader :id, :first_name, :last_name, :house, :age

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i()
  end

def save()
  sql = "INSERT INTO students (first_name, last_name, house, age)
      VALUES ($1, $2, $3, $4)"
  values = [@first_name,@last_name,@house,@age]
  SqlRunner.run(sql, values)
end

def self.find_all()
  sql = "SELECT * FROM students"
  result = SqlRunner.run(sql)
  return result.map{|details| Student.new(details)}
end

def self.find_by_id(id)
  sql = "SELECT * FROM students WHERE id = $1"
  values = [id]
  result = SqlRunner.run(sql, values)
  return Student.new(result[0])
end


end
