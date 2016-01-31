class CivGame 
  attr_reader :num_civs, :num_conditions, :num_city_states, :player_civ, :map_type, :map_size

  def initialize
    @player_civ = CIVS.sample
		@num_civs = rand(1..21)
    @num_city_states = city_states
    @map_type = MAP_TYPES.sample
    @map_size = MAP_SIZES.sample
    @num_conditions = rand(1..5)
    @victory = set_victory_conditions
	end

	def city_states
		if @num_civs < 5
			return rand(0..21)
		else
			rand(0..41)
		end
	end

	def set_victory_conditions
		if @num_conditions == 5
			return "All"
		else
			CONDITIONS.sample(@num_conditions).join(", ")
		end
	end

  def print_rules
    "Player: #{@player_civ}\n" +
    "AI Civs: #{@num_civs}\n" +
    "City states: #{@num_city_states}\n" +
    "Map: #{@map_type}\n" +
    "Size: #{@map_size}\n" +
    "Victory: #{@victory}\n"
  end
end
