#require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    address VARCHAR(255)
  )
SQL

# create a students table (if it's not there already)
db.execute(create_table)

# add a test student
#db.execute("INSERT INTO students (first_name, last_name, age, address) VALUES ('Assunta', 'Crux', 12, 'Sptizelbergerstr.5, 82166 Gräfelfing')")

# create Method to add new students
def add_students(db, first_name, last_name, age, address)
	db.execute("INSERT INTO students (first_name, last_name, age, address) VALUES (?,?,?,?)" , [first_name, last_name, age, address])
end

# Ask for user input to add new student to the data base:
puts "Student Directory\nPlease enter first name of the new student:"
first_name = gets.chomp
puts "Thank you\nPlease enter the last name of the new student"
last_name = gets.chomp
puts "Thank you\nPlease enter the age of the student as a number"
age = gets.chomp
puts "Thank you\nPlease enter the full address of the new student"
address = gets.chomp

add_students(db, first_name, last_name, age, address)