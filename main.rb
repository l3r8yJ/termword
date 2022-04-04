# frozen_string_literal: true

# main.rb
require_relative './classes/passwords/password'
require_relative './classes/passwords/logged_password'
require_relative './classes/passwords/encrypted_password'

LoggedPassword.new(EncryptedPassword.new(Password.new('meme password')))
