class Certificate
    def initialize(user_id, course_id, progress_status, certificate_id)
        @user_id = user_id
        @course_id = course_id
        @progress_status = progress_status
        @certificate_id = certificate_id
    end

    def getData()
        puts "\nCertificate Data"
        puts "\n****************************************"
        puts "\nUser ID: #{@user_id}"
        puts "Course ID: #{@course_id}"
        puts "Progress Status: #{@progress_status}"
        puts "Certificate ID: #{@certificate_id}"
    end 
end