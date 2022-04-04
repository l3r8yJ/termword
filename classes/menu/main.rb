# frozen_string_literal: true

require_relative './item'
# /classes/menu/main.rb
# Class of main menu
class Menu
  attr_reader :items

  def initialize(menu_item)
    self.items = []
    @items.push(menu_item) unless menu_item.nil?
  end

  def put_items
    @items.each do |menu_item|
      puts "#{menu_item.number} #{menu_item.title} #{menu_item.description}"
    end
  end
end

Menu.new(MenuItem.new('Test title', 'test description', 1)).put_items
