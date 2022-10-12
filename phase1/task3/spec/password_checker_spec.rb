require 'password_checker'

RSpec.describe "PasswordChecker tests:" do
  it "Test 1. Password longer then 8" do
    password = PasswordChecker.new
    result = password.check("123456789")
    expect(result).to eq true
  end
  it "Test 2. Password equalse 8 symbols" do
    password = PasswordChecker.new
    result = password.check("12345678")
    expect(result).to eq true
  end
  it "Test 3. Password less then 8 symbols" do
    password = PasswordChecker.new
    expect { password.check("1234567") }.to raise_error "Invalid password, must be 8+ characters."
  end
  it "Test 4. Password equales nil" do
    password = PasswordChecker.new
    expect { password.check(nil) }.to raise_error NoMethodError
  end
end