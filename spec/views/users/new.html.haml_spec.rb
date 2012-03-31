require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :password => "MyString",
      :nationality => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_nationality", :name => "user[nationality]"
      assert_select "input#user_type", :name => "user[type]"
    end
  end
end
