class CivGame < ActiveRecord::Base
  attr_reader :num_civs, :num_conditions, :num_city_states, :player_civ, :map_type, :map_size
  
  def initialize
		@num_civs = rand(1..21)
    @num_conditions = rand(1..5)
    @num_city_states = city_states
    @player_civ = CIVS.sample
    @map_type = MAP_TYPES.sample
    @map_size = MAP_SIZES.sample
	end

	def city_states
		if @num_civs < 5
			return rand(0..21)
		else
			rand(0..41)
		end
	end

	def victory
		if @num_conditions == 5
			return "All"
		else
			CONDITIONS.sample(@num_conditions)
		end
	end
end
