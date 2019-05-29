class Student

  def initialize(options)
    @id = options['id'].to_i() if options['id']
