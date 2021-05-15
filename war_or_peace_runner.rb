require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'

card1 = Card.new(:heart, '3', 3)
card2 = Card.new(:heart, '4', 4)
card3 = Card.new(:heart, '5', 5)
card4 = Card.new(:heart, '6', 6)
card5 = Card.new(:heart, '7', 7)
card6 = Card.new(:heart, '8', 8)
card7 = Card.new(:heart, '9', 9)
card8 = Card.new(:heart, '10', 10)
card9 = Card.new(:heart, 'Jack', 11)
card10 = Card.new(:heart, 'Queen', 12)
card11 = Card.new(:heart, 'King', 13)
card12 = Card.new(:heart, 'Ace', 14)
card13 = Card.new(:spade, '2', 2)
card14 = Card.new(:spade, '3', 3)
card15 = Card.new(:spade, '4', 4)
card16 = Card.new(:spade, '5', 5)
card17 = Card.new(:spade, '6', 6)
card18 = Card.new(:spade, '7', 7)
card19 = Card.new(:spade, '8', 8)
card20 = Card.new(:spade, '9', 9)
card21 = Card.new(:spade, '10', 10)
card22 = Card.new(:spade, 'Jack', 11)
card23 = Card.new(:spade, 'Queen', 12)
card24 = Card.new(:spade, 'King', 13)
card25 = Card.new(:spade, 'Ace', 14)
card26 = Card.new(:club, '2', 2)
card27 = Card.new(:club, '3', 3)
card28 = Card.new(:club, '4', 4)
card29 = Card.new(:club, '5', 5)
card30 = Card.new(:club, '6', 6)
card31 = Card.new(:club, '7', 7)
card32 = Card.new(:club, '8', 8)
card33 = Card.new(:club, '9', 9)
card34 = Card.new(:club, '10', 10)
card35 = Card.new(:club, 'Jack', 11)
card36 = Card.new(:club, 'Queen', 12)
card37 = Card.new(:club, 'King', 13)
card38 = Card.new(:club, 'Ace', 14)
card39 = Card.new(:diamond, '2', 2)
card40 = Card.new(:diamond, '3', 3)
card41 = Card.new(:diamond, '4', 4)
card42 = Card.new(:diamond, '5', 5)
card43 = Card.new(:diamond, '6', 6)
card44 = Card.new(:diamond, '7', 7)
card45 = Card.new(:diamond, '8', 8)
card46 = Card.new(:diamond, '9', 9)
card47 = Card.new(:diamond, '10', 10)
card48 = Card.new(:diamond, 'Jack', 11)
card49 = Card.new(:diamond, 'Queen', 12)
card50 = Card.new(:diamond, 'King', 13)
card51 = Card.new(:diamond, 'Ace', 14)
card52 = Card.new(:heart, '2', 2)

deck1 = Deck.new([card1, card4, card5, card7, card9, card11, card13, card15, card17, card19, card21, card23, card25, card27, card29, card31, card33, card35, card37, card39, card41, card43, card45, card47, card49, card51])
deck2 = Deck.new([card2, card3, card6, card8, card10, card12, card14, card16, card18, card20, card22, card24, card26, card28, card30, card32, card34, card36, card38, card40, card42, card44, card46, card48, card50, card52])

# deck3 = deck1.cards.shuffle
# deck4 = deck2.cards.shuffle

player1 = Player.new('Billy', deck1)
player2 = Player.new('Lauren', deck2)

turn = Turn.new(player1, player2)
game = Game.new(turn)

p "Welcome to War! (or Peace) This game will be played with 52 cards. The players today are #{turn.player1.name} and #{turn.player2.name}. Type 'GO' to start the game!"

play_game = gets.chomp
if play_game.downcase == 'go'
  game.start
else
  puts 'Some other time maybe'
end
