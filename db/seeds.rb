File.open("words.txt", "r").each do |dictionary_word|
  word = Word.new
  word.assign_attributes({entry: dictionary_word.chomp.downcase, sorted_entry: dictionary_word.chomp.downcase.split('').sort.join})
  word.save!
end