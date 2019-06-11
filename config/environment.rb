require 'pry'
require 'sqlite3'
require_relative '../lib/treats.rb'

DB = {:conn => SQLite3::Database.new("db/treats.db")}
binding.pry