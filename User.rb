class User
    attr_reader :id, :name, :email, :password

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

