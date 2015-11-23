require 'pry'
require './response.rb'

def get_data(filename)
	File.open(filename, "r").collect{ |f| f.chomp.split(",")}
end 

def get_questions(file_array)
	file_array.shift
end 

def make_response_objects(file_array)
	file_array.each do |item|
		Response.new(item)
	end
end

file_array = get_data("data.csv")
questions = get_questions(file_array)
make_response_objects(file_array)