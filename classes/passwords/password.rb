# frozen_string_literal: true

# password.rb
# class Password
# This class is the essence of the user's password
class Password
  attr_reader :value

  # @params:
  # line - line of symbols of password
  def initialize(value)
    if value.length.zero?
      puts 'Enter the password please!'
      return
    end
    @value = value
  end
end
