# List of Arrays to store data 

user_list = Array.new
course_list = Array.new
user_category_list = Array.new
course_enrolled_list = Array.new
course_published_list = Array.new
feedback_list = Array.new
transaction_list = Array.new
billing_list = Array.new

# ************ User Class ********************

class User
    attr_reader :id

    def initialize(id, name, email, password, contact, doj)
        @id = id
        @name = name
        @email = email
        @password = password
        @contact = contact
        @doj = doj
    end

    def getData()
        puts "\nUser ID: #{@id}"
        puts "\nUser Data"
        puts "\n****************************************"
        puts "User Name: #{@name}"
        puts "User Email: #{@email}"
        puts "User Password: #{@password}"
        puts "User Contact: #{@contact}"
        puts "User DOJ: #{@doj}"
    end
end

# Dynamic User Input

# for i in 1..2
#     id = i.to_i
#     puts "Enter your name:"
#     name = gets
#     puts "Enter your email:"
#     email = gets
#     puts "Enter your password:"
#     password = gets
#     puts "Enter your contact no:"
#     contact = gets
#     doj = Time.new
#     user_list.push(User.new(id, name, email, password, contact, doj))
# end

# puts "\nUser Data"
# puts "\n****************************************"

# for i in 0...user_list.size
#     user_list[i].getData()
# end

u1 = User.new(1, "Peter Parker", "pp@example.com", "xxxxxxxxx", "9876543210", "12-12-2012")
u1.getData()


# ************* Course Class *********************

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


c1 = Course.new(1, "Ruby", "Complete Ruby Course", "$50", "48hrs", "20-05-2022", 4.8, "20-05-2022", "Programming Language")
c1.getData()

# # ************************** User Category ******************

class User_Category < User
    def initialize(user_cat)
        @user_id = @id
        @user_cat = user_cat
    end

    def getData()
        puts "\nUser Category Data"
        puts "\n****************************************"
        puts "\nUser with ID #{@user_id} is a #{@user_cat}"
    end
end


# Dynamic User Category Change
# for i in 0...user_list.size
#     if user_list[i].id == log_id
#         puts "Enter your category student/teacher: "
#         user_cat = gets 
#         user_category_list.push(User_Category.new(log_id, user_cat))c
#         puts "Category Updated"
#     else
#         puts "No, User with ID #{log_id} found"
#     end
# end

# puts "\nUser Category Data"
# puts "\n****************************************"

# for i in 0...user_list.size
#     user_list[i].getData()
# end


u_c = User_Category.new("Student")
u_c.getData()

# *********************** Course Enrolled ******************

class Course_Enrolled
    def initialize(course_id, user_id)
        @course_id = course_id
        @user_id = user_id
    end

    def getData() 
        puts "\nCourse_Enrolled Data"
        puts "\n****************************************"
        puts "\nUser with ID #{@user_id} is enrolled in Course with ID #{@course_id}"
    end
end

c_e = Course_Enrolled.new(c1.id, u1.id)
c_e.getData()

# ********************* Course Published *********************

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

c_e = Course_Published.new(c1.id, u1.id)
c_e.getData()

# ****************** Transaction ***************

class Transaction
    attr_reader :txn_id, :course_id, :user_id, :purchase_date, :payment_status

    def initialize(txn_id, course_id, user_id, purchase_date, payment_status)
        @txn_id = txn_id
        @course_id = course_id
        @user_id = user_id
        @purchase_date = purchase_date
        @payment_status = payment_status.to_i
    end

    def getData() 
        puts "\nTransaction Data"
        puts "\n****************************************"
        puts "\nTransaction ID: #{@txn_id}"
        puts "Course ID: #{@course_id}"
        puts "User ID: #{@user_id}"
        puts "Purchase Date: #{@purchase_date}"
        if @payment_status
            puts "Payment Status: Success"
        else
            puts "Payment Status: Fail"
        end
    end
end

txn1 = Transaction.new("12dsx3d3", c1.id, u1.id, "23-03-2023", 1)
txn1.getData()

# ********************** Billing Details ***************************

class Billing_Details < Transaction
    def initialize(bill_id)
        @bill_id = bill_id
        @txn_id = @txn_id
        @course_id = @course_id
        @user_id = @user_id
        @purchase_date = @purchase_date
    end

    def getData() 
        puts "\nBilling Data"
        puts "\n****************************************"
        puts "\nBilling ID: #{@bill_id}"
        puts "Transaction ID: #{@txn_id}"
        puts "Course ID: #{@course_id}"
        puts "User ID: #{@user_id}"
        if @payment_status
            puts "Payment Status: Success"
        else
            puts "Payment Status: Fail"
        end
    end
end

if @payment_status == 1
    b_d = Billing_Details.new(1)
    b_d.getData()
else
    puts "\nPayment was unsuccessful"
end

# ************************ Feedback ************************************

class Feedback
    def initialize(course_id, user_id, rating, rated_date)
        @course_id = course_id
        @user_id = user_id
        @rating = rating
        @rated_date = rated_date
    end

    def getData() 
        puts "\nFeedback Data"
        puts "\n****************************************"
        puts "\nCourse ID: #{@course_id}"
        puts "User ID: #{@user_id}"
        puts "Rating: #{@rating}"
        puts "Rated On: #{@rated_date}"
    end
end

fdb = Feedback.new(c1.id, u1.id, 4.8, "14-07-2021")
fdb.getData()

# ****************** Progress ****************************

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

pgrs = Progress.new(c1.id, u1.id, c1.duration, 13)
pgrs.getData()


# ***************************** Certificate ***************************

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

if pgrs.completion_percentage == 100 
    certi = Certificate.new(u1.id, c1.id, pgrs.completion_percentage, "2jt4vg5j3b4ynrj2y3gr")
    certi.getData()
else
    puts "\nCertificate Data"
    puts "\n****************************************"
    puts "\nComplete the course to get certification"
end