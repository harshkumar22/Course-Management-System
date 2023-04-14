class Course
    attr_reader :duration

    def initialize(id, name, description, price, duration, dop, rating, last_update, category)
        @id = id
        @name = name
        @description = description
        @price = price
        @duration = duration
        @dop = dop
        @rating = rating
        @last_update = last_update
        @category = category
    end

    def id
        @id
    end

    def getData()
        puts "\nCourse ID: #{@id}"
        puts "\nCourse Data"
        puts "\n***************************************"
        puts "Course Name: #{@name}"
        puts "Course Description: #{@description}"
        puts "Course Price: #{@price}"
        puts "Course Duration: #{@duration}"
        puts "Course Date of Published: #{@dop}"
        puts "Course Rating: #{@rating}"
        puts "Course last Updated: #{@last_update}"
        puts "Course Category: #{@category}"
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
#     dop = Time.new
#     rating = 1
#     last_update = Time.new
#     puts "Enter your course category:"
#     category = gets

#     course_list.push(Course.new(id, name, description, price, duration, dop, rating, last_update, category))
# end

# puts "\nCourse Data"
# puts "\n***************************************"

# for i in 0...course_list.size
#     course_list[i].getData()
# end
