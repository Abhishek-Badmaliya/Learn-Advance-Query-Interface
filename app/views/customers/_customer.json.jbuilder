json.extract! customer, :id, :cust_fname, :cust_lname, :cust_email, :cust_phone_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
