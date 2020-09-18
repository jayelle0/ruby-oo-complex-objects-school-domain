# code here!

require 'pry'



class School 

    attr_accessor :name, :grade
    attr_reader :roster

    def initialize (name) 
        @name = name
        @roster = {}
   
    end 


    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(this_grade)
        roster[this_grade]
    end 

    def sort
        sorted = {}
        roster.each do |grade, students|
        sorted[grade] = students.sort
        end
        sorted
        end 

end 
