# frozen_string_literal: true

# /classes/menu/item.rb
# This class is the essence of the item of menu
class MenuItem
  attr_reader :title, :description, :number

  def initialize(title, description, number)
    @title = validate(title)
    @description = validate(description)
    @number = validate(number)
  end

  private

  def validate(arg)
    arg unless arg.nil?
  end
end
