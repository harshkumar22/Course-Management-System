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