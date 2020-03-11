class Student

  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id=null)
    @name = name 
    @grade = grade
    @id = id
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
      )
    SQL
    DB[:conn].execute(sql)
  end
  
  def save
    sql = <<-SQL
      INSERT INTO students (name, grade) VALUES (?, ?)
    SQL
    
  
end
