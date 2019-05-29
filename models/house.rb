require_relative('../db/sql_runner')

class House

attr_reader :id, :name, :logo

def initialize(options)
  @id = options['id'].to_i() if options['id']
  @name = options['name']
  @logo = options['logo']

end

def save()
  sql = "INSERT INTO houses (name, logo) VALUES ($1, $2)"
  values = [@name,@logo]
  SqlRunner.run(sql,values)
end

def self.find_all()
  sql = "SELECT * FROM houses"
  result = SqlRunner.run(sql)
  return result.map{|details| House.new(details)}
end

def self.find_by_id(id)
  sql = "SELECT * FROM houses WHERE id = $1"
  values = [id]
  result = SqlRunner.run(sql, values)
  return House.new(result[0])
end

end
