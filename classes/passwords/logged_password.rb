# frozen_string_literal: true

# logger.rb
require_relative './password'
# class LoggedPassword
# This class make console log
class LoggedPassword < Password
  def initialize(password)
    super(password.value)
    puts @value
  end
end
