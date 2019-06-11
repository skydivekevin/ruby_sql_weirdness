class Treats
  attr_accessor :name, :deliciousness, :price, :id

  def initialize (name, deliciousness, price, id=nil)
    @name = name
    @deliciousness = deliciousness
    @price = price 
  end

  def self.create_table_doughnuts
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS doughnuts (
      id INTEGER PRIMARY KEY,
      name TEXT,
      deliciousness INTEGER,
      price INTEGER
    )
    SQL
    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
    INSERT INTO doughnuts (name, deliciousness, price)
    VALUES (?, ?, ?)
    SQL
    DB[:conn].execute(sql, self.name, self.deliciousness, self.price)
  end




end