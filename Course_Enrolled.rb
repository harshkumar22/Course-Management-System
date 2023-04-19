class Course_Enrolled
    attr_reader :enrollment_id, :course_id, :user_id, :expiry_date

    def initialize(enrollment_id, course_id, user_id, expiry_date)
        @enrollment_id = enrollment_id
        @course_id = course_id
        @user_id = user_id
        @expiry_date = expiry_date
    end

    def getData() 
        puts "\nCourse_Enrolled Data"
        puts "\n****************************************"
        puts "\n Enrollment ID: #{@enrollment_id}"
        puts "Course ID: #{@course_id}"
        puts "User ID: #{@user_id}"
        puts "Expiry Date: #{@expiry_date}"
    end
end