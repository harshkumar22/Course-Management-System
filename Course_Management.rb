# Including classes

require './User.rb'
require './Course.rb'
require './Course_Enrolled.rb'
require './Transaction.rb'

# List of Arrays to store data 

user_list = Array.new
course_list = Array.new
user_category_list = Array.new
course_enrolled_list = Array.new
course_published_list = Array.new
feedback_list = Array.new
transaction_list = Array.new
billing_list = Array.new

# ************* Dummy Data *******************

user_list.push(User.new(1, "Peter Parker", "pp@example.com", "qaz123", "9876543210", "12-12-2012"))
course_list.push(Course.new(1, "Ruby", "Complete Ruby Course", "$50", "48hrs", "20-05-2022","No Prerequists needed" ,4.8, "20-05-2022", "Programming Language", "Unlimited", true))

# ************ User Class ********************

log_in_id = 0

puts "Please Press 1 to Sign-Up:"
puts "Please Press 2 to Log-In:"
puts "Please Press 3 to Exit:"
input = 4
while input != 3
    puts "Enter your choice: "
    input = gets.to_i

    if input == 1
        id = user_list.size + 1
        puts "Enter your name:"
        name = gets
        puts "Enter your email:"
        email = gets
        puts "Enter your password:"
        password = gets
        puts "Enter your contact no:"
        contact = gets
        doj = Time.new
        user_list.push(User.new(id, name, email, password, contact, doj))
        puts "Welcome #{user_list[(user_list.size) -1 ].name }"
        puts "Please Press 2 to Log-In"
        next

    elsif input == 2
        puts "Enter your email:"
        email = gets.to_s
        puts "Enter your password:"
        password = gets.to_s
        
        puts "Here is the email I gave: #{email}"
        puts "Here is the email I gave - type: #{email.class}"
        puts "Here is the password I gave: #{password}"

        for i in 0...user_list.size
            puts "User - email: #{user_list[i].email}"
            puts "User - email - type: #{user_list[i].email.class}"
            puts "User - pass: #{user_list[i].password}"
            puts "Email Condition: #{user_list[i].email == email}"
            puts "Password Condition: #{user_list[i].password == password}"
            puts "Herre is my condition: #{user_list[i].email == email and user_list[i].password == password}"

            if user_list[i].email == email and user_list[i].password == password
                puts "User Logged In Successfully"
                log_in_id = user_list[i].id
                break
            end
        end
        if log_in_id == 0
            puts "Invalid Email or Password"
        else
            break
        end
    elsif input == 3
        puts "Bye Bye...!!!"
        break
    else
        puts "Invalid Field"
    end
end

# u1 = User.new(1, "Peter Parker", "pp@example.com", "xxxxxxxxx", "9876543210", "12-12-2012")
# u1.getData()


# ************* Course Class *********************

# c1 = Course.new(1, "Ruby", "Complete Ruby Course", "$50", "48hrs", "20-05-2022", 4.8, "20-05-2022", "Programming Language")
# c1.getData()

# # *********************** Course Enrolled ******************


# c_e = Course_Enrolled.new(c1.id, u1.id)
# c_e.getData()

# # ********************* Course Published *********************


# c_e = Course_Published.new(c1.id, u1.id)
# c_e.getData()

# # ****************** Transaction ***************

if log_in_id != 0
    puts "Press 1 to Enroll into course: "
    puts "Press 2 to exit:"

    input = gets.to_i

    if input == 1
        puts "List of available courses"
        for i in 0...course_list.size
            course_list[i].getData()
        end
        puts "To get enrolled Enter the name of the course: "
        name_course = gets.to_s
        flag = false
        for i in 0...course_list.size
            if course_list[i].name == name_course
                course_enrolled_list.push(Course_Enrolled.new(log_in_id, Course.id))
                transaction_list.push(SecureRandom.alphanumeric, Course.id, log_in_id, Time.new, 1)
                puts "Buyed and Enrolled Successfully"
                flag = true
            end
        end
        if !flag
            puts "Wrong Course Named Entered"
        end
    elsif input == 2
        puts "See You"
    else
        puts "Invalid Choice entered"
    end
end

# txn1 = Transaction.new("12dsx3d3", c1.id, u1.id, "23-03-2023", 1)
# txn1.getData()

# # ********************** Billing Details ***************************



# if @payment_status == 1
#     b_d = Billing_Details.new(1)
#     b_d.getData()
# else
#     puts "\nPayment was unsuccessful"
# end

# # ************************ Feedback ************************************



# fdb = Feedback.new(c1.id, u1.id, 4.8, "14-07-2021")
# fdb.getData()

# # ****************** Progress ****************************



# pgrs = Progress.new(c1.id, u1.id, c1.duration, 13)
# pgrs.getData()


# # ***************************** Certificate ***************************


# if pgrs.completion_percentage == 100 
#     certi = Certificate.new(u1.id, c1.id, pgrs.completion_percentage, "2jt4vg5j3b4ynrj2y3gr")
#     certi.getData()
# else
#     puts "\nCertificate Data"
#     puts "\n****************************************"
#     puts "\nComplete the course to get certification"
# end