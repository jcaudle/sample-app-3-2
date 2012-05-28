require 'spec_helper'

describe UsersHelper do

	before { @user = User.new(name: "Example User", email: "user@example.com", 
														password: "foobar", password_confirmation: "foobar") }
	
	describe "gravatar_for" do
		it "should take a size parameter" do
			gravatar_for(@user, size: 40).should =~ /40/
		end
	end
end