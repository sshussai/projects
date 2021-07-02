require_relative 'player'
require_relative 'spec_helper'

describe Player do

  before do
    @initial_health = 50
    @player = Player.new("larry", @initial_health)
    $stdout = StringIO.new
  end

  it "has a capitalized name" do
    expect(@player.name).to eq "Larry"
  end

  it "has a string representation" do
    expect(@player.to_s).to eq "I'm Larry with a health of 50 and a score of 55"
  end

  it "computes a score as the sum of its health and length of name" do
    expect(@player.score).to eq 55
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    expect(@player.health).to eq @initial_health + 15
  end

  it "decreases health by 10 when blammed" do
    @player.blam
    expect(@player.health).to eq @initial_health - 10
  end

  context "created with default health" do
    before do
      @player = Player.new("larry")
    end

    it "has a default health" do
      expect(@player.health).to eq 100
    end
  end

end
