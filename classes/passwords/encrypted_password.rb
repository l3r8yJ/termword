# frozen_string_literal: true

# logger.rb
require_relative './password'
# class EncryptedPassword
# Encrypted version of password class
class EncryptedPassword < Password
  def initialize(password)
    super(password.value)
  end

  def value
    head + micro_hash(time.to_i) + time.to_s
  end

  private

  def head
    result = ''
    value_to_array.each do |c|
      result += white_space if c == ' '

      result += letters.at(letters.index(c).to_i + time.to_i).to_s
    end
    result + time.to_s
  end

  def white_space
    "#{time.to_i * 10}#{letters[time.to_i / 10]}#{time.to_i / 10}"
  end

  def value_to_array
    @value.split('')
  end

  def micro_hash(position)
    position -= 26 if position > 26
    if position.zero?
      ''
    else
      "#{letters[position]}#{2**position}#{micro_hash(position - 1)}"
    end
  end

  # get current minutes
  def time
    Time.now.min
  end

  # array of letters from a to z
  def letters
    ('a'..'z').to_a
  end
end
