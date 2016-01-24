require 'rails_helper'

RSpec.describe CivGame, type: :model do

  describe "random number generation" do
    let(:game) { CivGame.new }

    it "generates num_city_states one time per instance" do
      num_cs = game.num_city_states
      expect(game.num_city_states).to eq(num_cs)
    end

    it "generates num_civs one time per instance" do
      num_ai = game.num_civs
      expect(game.num_civs).to eq(num_ai)
    end

    it "generates num_conditions one time per instance" do
      num_victory_conditions = game.num_conditions
      expect(game.num_conditions).to eq(num_victory_conditions)
    end
  end

  describe "sampled constants" do
    let(:game) { CivGame.new }

    it "assigns player's civilization one time per instance" do
      player = game.player_civ
      expect(game.player_civ).to eq(player)
    end

    it "assigns map type one time per instance" do
      map = game.map_type
      expect(game.map_type).to eq(map)
    end

    it "assigns map size one time per instance" do
      size = game.map_size
      expect(game.map_size).to eq(size)
    end
  end

end
