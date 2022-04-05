# frozen_string_literal: true

require_relative './menu_item'
# /classes/menu/main.rb
# Class of main menu
class Menu
  attr_reader :items

  def initialize(menu_item)
    @items = []
    add_item(menu_item)
  end

  def log_items
    items.each do |item|
      puts "#{item.number} #{item.title} #{item.description}"
    end
  end

  def add_item(menu_item)
    @items.push(menu_item) unless menu_item.nil?
  end

  def read_line
    user_input = gets
    puts "#{user_input} you're faggot"
  end
end

menu = Menu.new(
  MenuItem.new(
    {
      title: 'Menu',
      description: 'choose a title by number.',
      number: 0
    }
  )
)

menu.log_items
menu.read_line
