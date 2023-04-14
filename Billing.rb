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