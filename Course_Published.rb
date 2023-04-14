class Course_Published
    def initialize(course_id, user_id)
        @course_id = course_id
        @user_id = user_id
    end

    def getData() 
        puts "\nCourse_Published Data"
        puts "\n****************************************"
        puts "\nUser with ID #{@user_id} is Published in Course with ID #{@course_id}"
    end
end
