class Feedback
    def initialize(course_id, user_id, rating, review, rated_date)
        @course_id = course_id
        @user_id = user_id
        @rating = rating
        @review = review
        @rated_date = rated_date
    end

    def getData() 
        puts "\nFeedback Data"
        puts "\n****************************************"
        puts "\nCourse ID: #{@course_id}"
        puts "User ID: #{@user_id}"
        puts "Rating: #{@rating}"
        puts "Review: #{@review}"
        puts "Rated On: #{@rated_date}"
    end
end