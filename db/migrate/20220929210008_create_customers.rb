class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :cust_fname
      t.string :cust_lname
      t.string :cust_email
      t.string :cust_phone_number

      t.timestamps
    end
  end
end
