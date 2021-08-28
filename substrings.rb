def substrings(word, dictionary)
  splitted_words = word.split(/[^a-z0-9A-Z]/).select {|value| value!=''}.map {|value| value.downcase}
  result = {}
  dictionary.each do |value|
    result[value] = splitted_words.count {|splitted_word| splitted_word.include?(value)}
  end
  result.select {|key, value| value !=0}
end

puts substrings("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
puts substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])