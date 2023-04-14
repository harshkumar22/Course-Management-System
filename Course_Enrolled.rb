class Course_Enrolled
    def initialize(course_id, user_id)
        @course_id = course_id
        @user_id = user_id
    end

    def getData() 
        puts "\nCourse_Enrolled Data"
        puts "\n****************************************"
        puts "\nUser with ID #{@user_id} is enrolled in Course with ID #{@course_id}"
    end
end