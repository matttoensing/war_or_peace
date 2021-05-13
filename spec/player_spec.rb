# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Player do
  before :each do
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @deck = Deck.new([@card1, @card2, @card3])
    @player = Player.new('Clarisa', @deck)
  end

  it 'exists' do
    expect(@player).to be_an_instance_of(Player)
  end

  it 'has a name' do
    expect(@player.name).to eq('Clarisa')
  end

  it 'has a deck of cards' do
    expect(@player.deck).to eq(@deck)
  end

  it 'has not lost yet' do
    expect(@player.has_lost?).to be false
  end

  it 'can lose a round' do
    @player.deck.remove_card
    expect(@player.has_lost?).to be false

    @player.deck.remove_card
    expect(@player.has_lost?).to be false

    @player.deck.remove_card
    expect(@player.has_lost?).to be true

    expect(@player.deck.cards).to eq([])
  end
end
