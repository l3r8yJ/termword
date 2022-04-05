# frozen_string_literal: true

# /classes/menu/menu_item.rb
# This class is the essence of the item of menu
class MenuItem
  attr_reader :title, :description, :number

  def initialize(args = {})
    @title = validate(args[:title])
    @description = validate(args[:description])
    @number = validate(args[:number])
  end

  private

  def validate(arg)
    arg unless arg.nil?
  end
end
