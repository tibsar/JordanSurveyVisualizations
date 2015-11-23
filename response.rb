class Response 
	attr_accessor :name, :age, :gender, :timestamp, :education, 
	:map_reading_skills, :importance_daily_life, :importance_first_map,
	:importance_syria, :importance_local_region, :when_maps_used, :map_organizations,
	:digital_maps
	def initialize(data)
		@timestamp = data.shift
		@name = data.pop
		@id = data.shift
		@age = data.shift
		@gender = data.shift
		@eductaion = data.shift
		@map_reading_skills = data.shift
		@importance_first_map = data.shift
		@importance_daily_life = data.shift
		@importance_syria = data.shift
		@importance_local_region = data.shift
		@digital_maps = data.pop.split("-")
		binding.pry
	end 


end 