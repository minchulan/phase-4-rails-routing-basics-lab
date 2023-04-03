class StudentsController < ApplicationController
    # Index Route 
    def index
        # this route returns an array of data
       students = Student.all 
       render json: students 
    end 

    # Grades Route 
    def grades
         # in the grades action, return JSON data representing a list of all students, ordered by grade from highest to lowest 
         # this route returns an array of data
         students = Student.order(grade: :desc)
         render json: students
    end 

    # Bonus: Highest Grade Route 
    def highest_grade
        # return JSON data representing the one student with the highest grade 
        # this route should only return just one object 
        students = Student.all
        students.max((s) => s[:grade])
        render json: students
    end 
end

#StudentsController, #students#show 
