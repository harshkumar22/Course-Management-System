class Progress
    attr_reader :completion_percentage

    def initialize(enrollment_id, total_duration, watched_duration)
        @enrollment_id = enrollment_id
        @total_duration = total_duration.to_i
        @watched_duration = watched_duration.to_i
        @completion_percentage = (@watched_duration * 100) / @total_duration
    end

    def getData() 
        puts "\nProgress Data"
        puts "\n****************************************"
        puts "\nEnrollment ID: #{@enrollment_id}"
        puts "Total Duration: #{@total_duration}"
        puts "Watched Duration: #{@watched_duration}"
        puts "Completed: #{@completion_percentage}%"
    end
end