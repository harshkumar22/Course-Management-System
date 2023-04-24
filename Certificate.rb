class Certificate

    attr_reader :enrollment_id, :progress_status, :certificate_id

    def initialize(enrollment_id, progress_status, certificate_id)
        @enrollment_id = enrollment_id
        @progress_status = progress_status
        @certificate_id = certificate_id
    end

    def getData()
        puts "\nCertificate Data"
        puts "\n****************************************"
        puts "\nEnrollment ID: #{@enrollment_id}"
        puts "Progress Status: #{@progress_status}"
        puts "Certificate ID: #{@certificate_id}"
    end 
end