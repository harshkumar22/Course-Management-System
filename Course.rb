class Course
    attr_reader :name, :duration

    def initialize(id, name, description, price, duration, dop, prerequist, rating, last_update, category, lifetime, draft_status)
        @id = id
        @name = name
        @description = description
        @price = price
        @duration = duration
        @dop = dop
        @prerequist = prerequist
        @rating = rating
        @last_update = last_update
        @category = category
        @lifetime = lifetime
        @draft_status = draft_status
    end

    def id
        @id
    end

    def getData()
        puts "\nCourse Data"
        puts "\n***************************************"
        puts "\nCourse ID: #{@id}"
        puts "Course Name: #{@name}"
        puts "Course Description: #{@description}"
        puts "Course Price: #{@price}"
        puts "Course Duration: #{@duration}"
        puts "Course Date of Published: #{@dop}"
        puts "Course Prereuisits: #{@prerequist}"
        puts "Course Rating: #{@rating}"
        puts "Course Last Updated: #{@last_update}"
        puts "Course Category: #{@category}"
        puts "Course Lifetime: #{@lifetime}"
        puts "Course Draft Status: #{@draft_status}"
    end
end

# Dynamic Course Entry
# for i in 1..2
#     id = i.to_i
#     puts "Enter your course name:"
#     name = gets
#     puts "Enter your course description"
#     description = gets
#     puts "Enter your course price:"
#     price = gets
#     puts "Enter your course duration:"
#     duration = gets
#     puts "Enter your course prerequitis: "
#     prerequisits = gets 
#     dop = Time.new
#     rating = 1
#     last_update = Time.new
#     puts "Enter your course category:"
#     category = gets
#     puts "Enter your course lifetime:"
#     lifetime = gets
#     puts "Enter your course drafting status:"
#     draft_status = gets
#     
#     course_list.push(Course.new(id, name, description, price, duration, dop, prerequist, rating, last_update, category, lifetime, draft_status)
# end

# puts "\nCourse Data"
# puts "\n***************************************"

# for i in 0...course_list.size
#     course_list[i].getData()
# end
