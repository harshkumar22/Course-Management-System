class Syllabus
    attr_reader :c_id, :syllbus_module_no, :syllbus_course_link

    def initialize(c_id, syllbus_module_no, syllbus_course_link)
        @c_id = c_id
        @syllbus_module_no = syllbus_module_no
        @syllbus_course_link = syllbus_course_link
    end

    def getData()
        puts "\nSyallbus Data"
        puts "\n***************************************"
        puts "\n Course ID: #{@c_id}"
        puts "Syallbus Module No.: #{@syllbus_module_no}"
        puts "Syallbus current module links:"
        puts syllbus_course_link
    end
    
