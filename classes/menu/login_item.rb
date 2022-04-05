# frozen_string_literal: true

require_relative './menu_item'
# /classes/menu/login_item.rb
# This class is the essence of the login item
class LoginItem < MenuItem 

  private

  def defaults
    @number = 1
    @title = 'Enter a password'
  end
end