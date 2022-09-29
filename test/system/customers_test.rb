require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "should create customer" do
    visit customers_url
    click_on "New customer"

    fill_in "Cust email", with: @customer.cust_email
    fill_in "Cust fname", with: @customer.cust_fname
    fill_in "Cust lname", with: @customer.cust_lname
    fill_in "Cust phone number", with: @customer.cust_phone_number
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit customer_url(@customer)
    click_on "Edit this customer", match: :first

    fill_in "Cust email", with: @customer.cust_email
    fill_in "Cust fname", with: @customer.cust_fname
    fill_in "Cust lname", with: @customer.cust_lname
    fill_in "Cust phone number", with: @customer.cust_phone_number
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit customer_url(@customer)
    click_on "Destroy this customer", match: :first

    assert_text "Customer was successfully destroyed"
  end
end
