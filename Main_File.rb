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

# ************* User Dummy Data ***************
user_list.push(User.new(1, "Peter Parker", "pp@example.com", "qaz123", "9876543210", "12-12-2012"))

# ************* Course Dummy Data ***************

course_list.push(Course.new(1, "Ruby", "Complete Ruby Course", "$50", "48hrs", "20-05-2022","No Prerequists needed" ,4.8, "20-05-2022", "Programming Language", "Unlimited", true))

course_list.push(Course.new(2, "JavaScript", "Complete JavaScript Course", "$30", "20hrs", "20-05-2021","No Prerequists needed" ,4.8, "20-05-2021", "Scripting Language", "Unlimited", true))

course_list.push(Course.new(3, "C++", "Complete C++ Course", "$40", "36hrs", "20-06-2022","No Prerequists needed" ,4.8, "20-06-2022", "Programming Language", "Unlimited", true))

course_list.push(Course.new(4, "Python", "Complete Python Course", "$60", "40hrs", "20-05-2020","No Prerequists needed" ,4.8, "20-05-2020", "Programming Language", "Unlimited", true))


# ************ User Class ********************

log_in_id = 0

puts "Please Press 1 to Sign-Up:"
puts "Please Press 2 to Log-In:"
puts "Please Press 3 to Exit:"
input = 4
while input != 3
    print "Enter your choice: "
    input = gets.to_i

    if input == 1
        id = user_list.size + 1
        print "Enter your name: "
        name = gets.chomp
        print "Enter your email: "
        email = gets.chomp
        print "Enter your password: "
        password = gets.chomp
        print "Enter your contact no: "
        contact = gets.chomp
        doj = Time.new
        user_list.push(User.new(id, name, email, password, contact, doj))
        puts "Welcome #{user_list[(user_list.size) -1 ].name }"
        print "Please Press 2 to Log-In: "
        next

    elsif input == 2
        print "Enter your email: "
        email = gets.chomp
        print "Enter your password: "
        password = gets.chomp

        for i in 0...user_list.size
            if user_list[i].email == email and user_list[i].password == password
                puts "\nUser Logged In Successfully\n\n"
                log_in_id = user_list[i].id
                break
            end
        end
        if log_in_id == 0
            puts "\nInvalid Email or Password\n\n"
        else
            break
        end
    elsif input == 3
        puts "\nBye Bye...!!!\n\n"
        break
    else
        puts "\nInvalid Field\n\n"
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
    print "Enter your choice: "
    input = gets.to_i

    if input == 1
        puts "List of available courses"
        for i in 0...course_list.size
            course_list[i].getData()
            puts "\n\n"
        end
        print "To get enrolled Enter the course id from the above list: "
        selected_course_id = gets.to_i
        flag = false
        for i in 0...course_list.size
            if course_list[i].id == selected_course_id
                puts "Name of the course you selected is #{course_list[i].id} having price $#{course_list[i].price}"
                puts "To buy this course Press 1"
                puts "To Exit Press 2"
                to_buy = gets.to_i 
                if to_buy == 1
                    course_enrolled_list.push(Course_Enrolled.new(course_enrolled_list.size + 1,log_in_id, course_list[i].id,course_list[i].lifetime))
                    transaction_list.push(Transaction.new(transaction_list.size + 1, course_list[i].id, log_in_id, course_list[i].price, course_list[i].price,  Time.new, 1))
                end
                puts "Buyed and Enrolled Successfully"

                puts "Below are your bill details: \n\n"
                puts "Transaction ID: #{transaction_list[(transaction_list.size) -1].txn_id}"
                puts "Course Bought: #{transaction_list[(transaction_list.size) -1].course_id}"
                puts "Total Amount Paid: #{transaction_list[(transaction_list.size) -1].total_amount}"
                puts "Purchase Date: #{transaction_list[(transaction_list.size) -1].purchase_date}"
                flag = true
            end
        end
        if !flag
            puts "Wrong Course ID Entered"
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