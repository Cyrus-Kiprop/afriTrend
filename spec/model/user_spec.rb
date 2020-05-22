require 'rails_helper'

RSpec.describe 'User' do
  let(:user) { User.new(first_name: 'John', last_name: 'Doe', email: 'example254@gmail.com', password: 'password') }

  context 'first_name' do
    it "User's first name must exist" do
      user.first_name = ''
      expect(user.valid?).to be_falsy
    end
    it "should return true when the user's first name is present" do
      user.first_name = 'John'
      expect(user.valid?).to be_truthy
    end
  end

  context 'last_name' do
    it "User's last name must exist" do
      user.last_name = ''
      expect(user.valid?).to be_falsy
    end
    it "should return true when the user's first name is present" do
      user.first_name = 'Doe'
      expect(user.valid?).to be_truthy
    end
  end

  context 'email' do
    it "User's email must exist" do
      user.email = ''
      expect(user.valid?).to be_falsy
    end
    it 'should return true whenever there is an email' do
      user.email = 'example254@gmail.com'
      expect(user.valid?).to be_truthy
    end
    it 'should return false when an invalid email is issued' do
      invalid_email = 'exmaple@exm@gmail.com'
      user.email = invalid_email
      expect(user.valid?).to be_falsy
    end
    it 'should return true when a valid email is issued' do
      valid_email = 'example254@gmail.com'
      user.email = valid_email
      expect(user.valid?).to be_truthy
    end
    it 'email length cannot exceed 255 characters' do
      prefix = 'a' * 257
      email = "#{prefix}@gmail.com"
      user.email = email
      expect(user.valid?).to be_falsy
    end
  end

  context 'password' do
    it "User's password must exist" do
      user.password = ''
      expect(user.valid?).to be_falsy
    end
    it 'should return true whenever the users a password' do
      user.email = 'example254@gmail.com'
      expect(user.valid?).to be_truthy
    end

    it 'should return false if the password character length is less than six' do
      password = 'a' * 3
      user.password = password
      expect(user.valid?).to be_falsy
    end

    it 'should return true whenever the password lentth is >= 6' do
      password = 'a' * 7
      user.password = password
      expect(user.valid?).to be_truthy
    end
  end
end
