class CreateLoanRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :loan_requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.decimal :loanAmount
      t.string :collegeName

      t.timestamps
    end
  end
end
