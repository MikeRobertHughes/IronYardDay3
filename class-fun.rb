class Student

  def initialize
    @bed_time = "Didn't sleep yet"
    @awake_time = "Not yet"
  end

  def wakes_up
    @awake_time = Time.now
    puts "Went to bed at #{@bed_time} and woke up at #{@awake_time}"
  end

  def sleep
    @bed_time = Time.now
    "Goes to bed"
  end

  def study
    "Studies"
  end
end

jacob = Student.new
jacob.wakes_up

class User
  attr_accessor :age

  def initialize
    @name = "Name not set yet"
    @age = "Age not set yet"
  end

  def name
    puts "User's name is #{@name}"
  end

  def age
    puts "User's age is #{@age}"
  end

  def study
    "Studies"
  end
end

newuser = User.new

newuser.age
newuser.age = 18
newuser.age

class Person

  def initialize(name)
    @name = name
  end

  def get_name
    @name.capitalize
  end

  def set_name(new_name)
    @name = new_name
  end
end

person1 = Person.new("Bob")
person2 = Person.new("Jil")
person1.get_name
person1.set_name("Ben")
person1.get_name
person1
person2.get_name

student_records = Array.new  # => []

student_records.push(Person.new('ryan'))
student_records.push(Person.new('justin'))
student_records.push(Person.new('jacob'))
student_records.push(Person.new('travis'))
student_records.push(Person.new('kate'))
student_records.push(Person.new('sarah'))
student_records.push(Person.new('sam'))

student_records.each do |person|
  puts person.get_name
end

class Animal

  def breathe
    "*inhales*"
  end

  def speak
    "grrrrrssssggg"
  end
end

class Cat < Animal
  def speak
    "meow"
  end
end

class Dog < Animal
  def speak
    "woof"
  end
end

cat = Cat.new
cat.class.ancestors
cat.speak
cat.breathe











