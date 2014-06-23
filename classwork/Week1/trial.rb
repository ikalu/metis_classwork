
file = File.new("text.txt", "r")
deck_count = file.gets.to_i

deck_count.times.map do
  deck_name = file.gets.chomp
  Deck.new(deck_name, get_cards)
end

card_count = file.gets.to_i
card_count.times.map do
  front = file.gets.chomp
  back = file.gets.chomp
  Card.new({front: front, back: back})
end
