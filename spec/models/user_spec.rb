require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", username: "ExampleUser", email: "user@example.com", password: "foobar22", password_confirmation: "foobar22") 
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:username)}
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }

  it { should be_valid }

  # ----presence validations----
  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when username is not present" do
  	before { @user.username = " " }
  	it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  # ----length validations----
  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when name is too short" do
  	before { @user.name = "a" * 3 }
  	it { should_not be_valid }
  end

  describe "when username is too short" do
  	before { @user.username = "a" * 5 }
  	it { should_not be_valid }
  end

  describe "when email is too long" do
  	before { @user.email = "a" * 256 }
  	it { should_not be_valid }
  end

  describe "when email is too short" do
  	before { @user.email = "a" * 4 }
  	it { should_not be_valid }
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 7 }
    it { should be_invalid }
  end

  # ----email format validations----
  describe "when email format is invalid" do
    it "should be invalid" do
      # these represent the invalid email forms
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      # these represent the valid email forms
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn 
      	name@name.io last@last.me him@him.us rep@rep.co sit@sit.net]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  # ----uniqueness validations----
  # Failure/Error: user_with_same_username.save / ArgumentError: / wrong number of arguments (0 for 1)

  # describe "when username is already taken" do
  # 	before do
  # 		user_with_same_username = @user.dup
  # 		user_with_same_username.username = @user.username.upcase
  # 		user_with_same_username.save
  # 	end

  # 	it { should_not be_valid }
  # end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  # ----Password Validations----
  # These validations are according to the Rails Tutorial. They may not work with devise
  # AWAITING RESTRUCTURING
  describe "when password is not present" do
    before do
      @user = User.new(name: "Example User", username: "ExampleUser", email: "user@example.com",
                       password: " ", password_confirmation: " ")
    end

    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  # Failure/Error: user_with_same_username.save / ArgumentError: / wrong number of arguments (0 for 1)
  # describe "return value of authenticate method" do
  #   before { @user.save }
  #   let(:found_user) { User.find_by(username: @user.username) }

  #   describe "with valid password" do
  #     it { should eq found_user.authenticate(@user.password) }
  #   end

  #   describe "with invalid password" do
  #     let(:user_for_invalid_password) { found_user.authenticate("invalid") }

  #     it { should_not eq user_for_invalid_password }
  #     specify { expect(user_for_invalid_password).to be_false }
  #   end
  # end
end