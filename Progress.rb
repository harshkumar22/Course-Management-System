class Progress
    attr_reader :completion_percentage

    def initialize(course_id, user_id, total_duration, watched_duration)
        @course_id = course_id
        @user_id = user_id
        @total_duration = total_duration.to_i
        @watched_duration = watched_duration.to_i
        @completion_percentage = (@watched_duration * 100) / @total_duration
    end

    def getData() 
        puts "\nProgress Data"
        puts "\n****************************************"
        puts "\nCourse ID: #{@course_id}"
        puts "User ID: #{@user_id}"
        puts "Total Duration: #{@total_duration}"
        puts "Watched Duration: #{@watched_duration}"
        puts "Completed: #{@completion_percentage}%"
    end
end