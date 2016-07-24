require 'pry'


class School

  # attr_accessor :name, :school, :kids_name, :grade, :child_name

  def initialize(name)
    @name = name
    @students = {}
    # @kids_name = []
    # @child_name = child_name
    # @grade = grade
  end


  def st
    "My school is: #{@name}"
  end


  def add(student, grade)
    if @students[grade] == nil
       @students[grade] = [student]
    else
      @students[grade].push(student)
      # @students[grade] << (student)
    end
    # @students[grade] ||= []  SHORTCUT  IF ELSE END ^
    # @students[grade] << student
  end


  def db
    return @students
  end


  def grade(grade)
    return @students[grade]
  end


  def sort
    sorted_students = {}
    @students.each do |grade,names|
      sorted_students[grade] = names.sort
    end
    return sorted_students.sort.to_h

  end


end
